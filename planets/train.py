#!/usr/bin/env python3
"""
Planet Name Generator — PyTorch Training Script

Trains a tiny char-level LSTM conditioned on 7 planet stats to generate
sci-fi planet names. Exports to ONNX (fp16) for on-device Flutter inference.

Usage:
    python train.py --data training_data.csv --epochs 200
"""

import argparse
import csv
import json
import math
import os
import random
from collections import Counter

import numpy as np
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.utils.data import DataLoader, Dataset

# ─── Constants ────────────────────────────────────────────────────────────────

HIDDEN = 192
EMBED = 64
STATS = 7
MAX_LEN = 20
STAT_COLS = ["atmosphere", "gravity", "resources", "lifesigns",
             "temperature", "water", "radiation"]

PAD_TOKEN = "<PAD>"
SOS_TOKEN = "<SOS>"
EOS_TOKEN = "<EOS>"
PAD_IDX = 0
SOS_IDX = 1
EOS_IDX = 2


# ─── Vocabulary ───────────────────────────────────────────────────────────────

def build_vocab(names: list[str]) -> tuple[dict[str, int], dict[int, str]]:
    """Build char-level vocabulary from all planet names."""
    chars = sorted(set(ch for name in names for ch in name))
    char_to_idx = {PAD_TOKEN: PAD_IDX, SOS_TOKEN: SOS_IDX, EOS_TOKEN: EOS_IDX}
    for i, ch in enumerate(chars, start=3):
        char_to_idx[ch] = i
    idx_to_char = {v: k for k, v in char_to_idx.items()}
    return char_to_idx, idx_to_char


# ─── Dataset ──────────────────────────────────────────────────────────────────

class PlanetNameDataset(Dataset):
    def __init__(self, names: list[str], stats: list[list[float]],
                 char_to_idx: dict[str, int], max_len: int = MAX_LEN):
        self.names = names
        self.stats = stats
        self.char_to_idx = char_to_idx
        self.max_len = max_len

    def __len__(self):
        return len(self.names)

    def __getitem__(self, idx):
        name = self.names[idx]
        stat = self.stats[idx]

        # Encode: SOS + chars + EOS, padded to max_len + 2
        tokens = [SOS_IDX] + [self.char_to_idx[ch] for ch in name] + [EOS_IDX]
        seq_len = len(tokens)
        pad_len = self.max_len + 2 - seq_len
        tokens += [PAD_IDX] * pad_len

        # Input: everything except last token; Target: everything except first
        input_seq = torch.tensor(tokens[:-1], dtype=torch.long)
        target_seq = torch.tensor(tokens[1:], dtype=torch.long)
        stats_t = torch.tensor(stat, dtype=torch.float32)

        return input_seq, target_seq, stats_t


# ─── Model (training) ────────────────────────────────────────────────────────

class PlanetNameLSTM(nn.Module):
    def __init__(self, vocab_size: int, embed_dim: int = EMBED,
                 hidden_dim: int = HIDDEN, stat_dim: int = STATS,
                 dropout: float = 0.05):
        super().__init__()
        self.hidden_dim = hidden_dim
        self.stat_dim = stat_dim

        self.stat_to_h = nn.Linear(stat_dim, hidden_dim, bias=False)
        self.stat_to_c = nn.Linear(stat_dim, hidden_dim, bias=False)
        self.embedding = nn.Embedding(vocab_size, embed_dim, padding_idx=PAD_IDX)
        # Stats concatenated with embedding at every timestep
        self.lstm = nn.LSTM(embed_dim + stat_dim, hidden_dim, num_layers=1,
                            batch_first=True)
        self.dropout = nn.Dropout(dropout)
        # FiLM: stats produce per-step scale (gamma) and shift (beta) on LSTM output
        self.film_gamma = nn.Linear(stat_dim, hidden_dim)
        self.film_beta = nn.Linear(stat_dim, hidden_dim)
        self.output_proj = nn.Linear(hidden_dim, vocab_size)

    def forward(self, input_seq, stats):
        """Full-sequence teacher-forced forward pass."""
        h0 = self.stat_to_h(stats).unsqueeze(0)  # (1, B, H)
        c0 = self.stat_to_c(stats).unsqueeze(0)

        emb = self.embedding(input_seq)            # (B, T, E)
        # Broadcast stats across timesteps and concat with embedding
        stats_exp = stats.unsqueeze(1).expand(-1, emb.size(1), -1)  # (B, T, 7)
        lstm_in = torch.cat([emb, stats_exp], dim=-1)  # (B, T, E+7)
        output, _ = self.lstm(lstm_in, (h0, c0))  # (B, T, H)
        output = self.dropout(output)
        # FiLM conditioning: modulate LSTM output with stat-derived scale+shift
        gamma = self.film_gamma(stats).unsqueeze(1)  # (B, 1, H)
        beta = self.film_beta(stats).unsqueeze(1)
        output = (1.0 + gamma) * output + beta
        logits = self.output_proj(output)           # (B, T, V)
        return logits

    def param_count(self):
        return sum(p.numel() for p in self.parameters())


# ─── ONNX Single-Step Wrapper ────────────────────────────────────────────────

class PlanetNameLSTMStep(nn.Module):
    """Single-step wrapper for ONNX export.

    Two stat inputs to match training behavior exactly:
    - stats_init: for h0/c0 initialization (nonzero on step 0, zeros after)
    - stats:      for LSTM input concat (always the real stat values)

    Usage from caller:
      Step 0: stats_init=real_stats, stats=real_stats, char_in=SOS, h_in=0, c_in=0
      Step 1+: stats_init=zeros, stats=real_stats, char_in=prev, h_in=h_out, c_in=c_out
    """
    def __init__(self, model: PlanetNameLSTM):
        super().__init__()
        self.stat_to_h = model.stat_to_h
        self.stat_to_c = model.stat_to_c
        self.embedding = model.embedding
        self.lstm = model.lstm
        self.film_gamma = model.film_gamma
        self.film_beta = model.film_beta
        self.output_proj = model.output_proj
        self.hidden_dim = model.hidden_dim

    def forward(self, stats_init, stats, char_in, h_in, c_in):
        """
        Args:
            stats_init: (1, 7)  — for h/c init (real on step 0, zeros after)
            stats:      (1, 7)  — for LSTM input concat + FiLM (real every step)
            char_in:    (1, 1)  — current input character index
            h_in:       (1, 1, H) — previous hidden state
            c_in:       (1, 1, H) — previous cell state
        Returns:
            logits:  (1, vocab_size)
            h_out:   (1, 1, H)
            c_out:   (1, 1, H)
        """
        # h/c init: stat projection (nonzero on step 0) + carry-in
        h = self.stat_to_h(stats_init).unsqueeze(0) + h_in  # (1, 1, H)
        c = self.stat_to_c(stats_init).unsqueeze(0) + c_in

        emb = self.embedding(char_in)  # (1, 1, E)
        # Concat real stats with embedding (continuous conditioning)
        lstm_in = torch.cat([emb, stats.unsqueeze(1)], dim=-1)  # (1, 1, E+7)
        output, (h_out, c_out) = self.lstm(lstm_in, (h, c))
        # FiLM conditioning
        gamma = self.film_gamma(stats).unsqueeze(1)  # (1, 1, H)
        beta = self.film_beta(stats).unsqueeze(1)
        output = (1.0 + gamma) * output + beta
        logits = self.output_proj(output.squeeze(1))  # (1, V)

        return logits, h_out, c_out


# ─── Generation (PyTorch) ────────────────────────────────────────────────────

@torch.no_grad()
def generate_name_pytorch(model: PlanetNameLSTM, stats: list[float],
                          char_to_idx: dict, idx_to_char: dict,
                          temperature: float = 1.0, max_len: int = MAX_LEN) -> str:
    """Generate a single planet name using the PyTorch model."""
    model.eval()
    device = next(model.parameters()).device

    stats_t = torch.tensor([stats], dtype=torch.float32, device=device)
    h = model.stat_to_h(stats_t).unsqueeze(0)
    c = model.stat_to_c(stats_t).unsqueeze(0)

    char_idx = SOS_IDX
    name_chars = []

    for _ in range(max_len):
        inp = torch.tensor([[char_idx]], dtype=torch.long, device=device)
        emb = model.embedding(inp)
        # Concat stats with embedding (continuous conditioning)
        lstm_in = torch.cat([emb, stats_t.unsqueeze(1)], dim=-1)
        output, (h, c) = model.lstm(lstm_in, (h, c))
        # FiLM conditioning
        gamma = model.film_gamma(stats_t).unsqueeze(1)
        beta = model.film_beta(stats_t).unsqueeze(1)
        output = (1.0 + gamma) * output + beta
        logits = model.output_proj(output.squeeze(1))

        if temperature < 1e-6:
            char_idx = logits.argmax(dim=-1).item()
        else:
            probs = F.softmax(logits / temperature, dim=-1)
            char_idx = torch.multinomial(probs, 1).item()

        if char_idx == EOS_IDX:
            break
        if char_idx == PAD_IDX:
            break
        name_chars.append(idx_to_char.get(char_idx, "?"))

    return "".join(name_chars)


# ─── Generation (ONNX) ───────────────────────────────────────────────────────

def generate_name_onnx(session, stats: list[float],
                       char_to_idx: dict, idx_to_char: dict,
                       temperature: float = 1.0, max_len: int = MAX_LEN,
                       hidden_dim: int = HIDDEN) -> str:
    """Generate a planet name using an ONNX runtime session."""
    stats_np = np.array([stats], dtype=np.float32)
    zeros_stats = np.zeros_like(stats_np)
    char_in = np.array([[SOS_IDX]], dtype=np.int64)
    h_in = np.zeros((1, 1, hidden_dim), dtype=np.float32)
    c_in = np.zeros((1, 1, hidden_dim), dtype=np.float32)

    name_chars = []

    for step in range(max_len):
        # stats_init: real on step 0 (for h0/c0), zeros after
        # stats: always real (for LSTM input concat)
        logits, h_out, c_out = session.run(None, {
            "stats_init": stats_np if step == 0 else zeros_stats,
            "stats": stats_np,
            "char_in": char_in,
            "h_in": h_in,
            "c_in": c_in,
        })

        if temperature < 1e-6:
            char_idx = int(np.argmax(logits, axis=-1).item())
        else:
            logits_scaled = logits[0] / temperature
            logits_scaled -= logits_scaled.max()
            probs = np.exp(logits_scaled) / np.exp(logits_scaled).sum()
            char_idx = int(np.random.choice(len(probs), p=probs))

        if char_idx in (EOS_IDX, PAD_IDX):
            break
        name_chars.append(idx_to_char.get(str(char_idx), "?"))

        char_in = np.array([[char_idx]], dtype=np.int64)
        h_in = h_out
        c_in = c_out

    return "".join(name_chars)


# ─── Evaluation ───────────────────────────────────────────────────────────────

def levenshtein(s1: str, s2: str) -> int:
    """Compute Levenshtein edit distance between two strings."""
    if len(s1) < len(s2):
        return levenshtein(s2, s1)
    if len(s2) == 0:
        return len(s1)

    prev = list(range(len(s2) + 1))
    for i, c1 in enumerate(s1):
        curr = [i + 1]
        for j, c2 in enumerate(s2):
            cost = 0 if c1 == c2 else 1
            curr.append(min(curr[j] + 1, prev[j + 1] + 1, prev[j] + cost))
        prev = curr
    return prev[-1]


def compute_bigram_kl(generated_names: list[str], training_names: list[str]) -> float:
    """Compute KL divergence of char bigram distributions: D_KL(gen || train)."""
    def get_bigram_dist(names):
        counts = Counter()
        for name in names:
            s = SOS_TOKEN + name + EOS_TOKEN
            for i in range(len(s) - 1):
                counts[(s[i], s[i + 1])] += 1
        total = sum(counts.values())
        return {k: v / total for k, v in counts.items()} if total > 0 else {}

    p_dist = get_bigram_dist(generated_names)  # generated
    q_dist = get_bigram_dist(training_names)   # training (reference)

    if not p_dist or not q_dist:
        return float("inf")

    # Smoothed KL: add small epsilon to avoid log(0)
    eps = 1e-8
    all_bigrams = set(p_dist.keys()) | set(q_dist.keys())
    kl = 0.0
    for bg in all_bigrams:
        p = p_dist.get(bg, eps)
        q = q_dist.get(bg, eps)
        kl += p * math.log(p / q)
    return kl


def evaluate(model: PlanetNameLSTM, val_names: list[str], val_stats: list[list[float]],
             train_names_set: set[str], train_names_list: list[str],
             char_to_idx: dict, idx_to_char: dict, device: torch.device) -> dict:
    """Run full evaluation: reconstruction, novelty, bigram KL."""
    model.eval()

    # 1. Reconstruction (T=0.1) on validation set
    exact = 0
    total_edit = 0
    for name, stats in zip(val_names, val_stats):
        gen = generate_name_pytorch(model, stats, char_to_idx, idx_to_char,
                                    temperature=0.1)
        if gen == name:
            exact += 1
        total_edit += levenshtein(gen, name)

    n_val = len(val_names)
    exact_match_rate = exact / n_val if n_val > 0 else 0.0
    avg_edit_dist = total_edit / n_val if n_val > 0 else 0.0

    # 2. Novelty (T=1.0) — generate 200 names from random stats
    novel_names = []
    for _ in range(200):
        rand_stats = [random.random() for _ in range(STATS)]
        gen = generate_name_pytorch(model, rand_stats, char_to_idx, idx_to_char,
                                    temperature=1.0)
        novel_names.append(gen)

    novelty_rate = sum(1 for n in novel_names if n not in train_names_set) / len(novel_names)

    # 3. Bigram KL divergence
    bigram_kl = compute_bigram_kl(novel_names, train_names_list)

    return {
        "exact_match_rate": exact_match_rate,
        "avg_edit_distance": avg_edit_dist,
        "novelty_rate": novelty_rate,
        "bigram_kl": bigram_kl,
    }


# ─── Data Loading ─────────────────────────────────────────────────────────────

def load_data(csv_path: str) -> tuple[list[str], list[list[float]]]:
    """Load planet names and stats from CSV."""
    names = []
    stats = []
    with open(csv_path, "r", encoding="utf-8") as f:
        reader = csv.DictReader(f)
        for row in reader:
            name = row["name"].strip()
            if not name:
                continue
            # Truncate to MAX_LEN
            if len(name) > MAX_LEN:
                name = name[:MAX_LEN]
            stat_vals = [float(row[col]) for col in STAT_COLS]
            names.append(name)
            stats.append(stat_vals)
    return names, stats


def spread_collisions(names: list[str], stats: list[list[float]],
                      seed: int = 42) -> list[list[float]]:
    """Spread stat values within collision groups using name-derived features.

    Many planets share identical stat vectors (quantized to 0.05 steps).
    We use phonetic/structural properties of each name to push stats in
    different directions per dimension, creating learnable stat-name
    correlations. Spread radius scales with group size.
    """
    import hashlib

    # Group indices by stat vector
    vec_to_indices: dict[tuple, list[int]] = {}
    for i, s in enumerate(stats):
        key = tuple(round(v, 2) for v in s)
        vec_to_indices.setdefault(key, []).append(i)

    new_stats = [s[:] for s in stats]  # deep copy
    n_spread = 0

    # Name-derived features: 7 features → 7 stat offsets
    def name_features(name: str) -> list[float]:
        """Extract 7 normalized features from a planet name."""
        n = name.strip()
        harsh = sum(1 for c in n.lower() if c in 'kxzqjgd')
        soft = sum(1 for c in n.lower() if c in 'lmnaeio')
        length = len(n)
        vowel_ratio = sum(1 for c in n.lower() if c in 'aeiou') / max(len(n), 1)
        has_numeral = 1.0 if any(c in n for c in 'IVX0123456789') else 0.0
        first_half = ord(n[0].upper()) <= ord('M') if n else 0.5
        # Use hash for a pseudo-random but deterministic 7th feature
        h = int(hashlib.md5(n.encode()).hexdigest()[:8], 16) / 0xFFFFFFFF

        return [
            min(harsh / 5.0, 1.0),          # harshness → atmosphere
            min(length / 15.0, 1.0),         # length → gravity
            vowel_ratio,                     # vowels → resources
            min(soft / 6.0, 1.0),            # softness → lifesigns
            has_numeral,                     # numeral → temperature
            1.0 if first_half else 0.0,      # alphabet half → water
            h,                               # hash → radiation
        ]

    for vec, indices in vec_to_indices.items():
        if len(indices) <= 1:
            continue
        n_spread += len(indices)
        n = len(indices)

        # Scale radius with group size: bigger groups need much more spread
        # Small groups (2-5): ±0.04, large groups (50+): ±0.20
        radius = min(0.20, 0.03 + 0.003 * n)

        # Get features for all names in this group
        feats = [name_features(names[idx]) for idx in indices]

        for dim in range(STATS):
            # Rank planets by this dimension's feature
            ranked = sorted(range(n), key=lambda k: (feats[k][dim], names[indices[k]]))
            for rank, k in enumerate(ranked):
                idx = indices[k]
                orig = vec[dim]
                if n > 1:
                    offset = radius * (2.0 * rank / (n - 1) - 1.0)
                else:
                    offset = 0.0
                new_stats[idx][dim] = max(0.0, min(1.0, orig + offset))

    # Verify uniqueness
    new_vecs = set(tuple(round(v, 6) for v in s) for s in new_stats)
    print(f"  Spread {n_spread} colliding planets → {len(new_vecs)} unique vectors "
          f"(was {len(vec_to_indices)})")

    return new_stats


def stratified_split(names, stats, train_r=0.8, val_r=0.1, seed=42):
    """Split data 80/10/10, stratified by mean stat bins."""
    rng = random.Random(seed)
    n = len(names)

    # Bin by mean stat value into 5 bins
    means = [sum(s) / len(s) for s in stats]
    bins = [min(int(m * 5), 4) for m in means]

    # Group indices by bin
    bin_groups: dict[int, list[int]] = {}
    for i, b in enumerate(bins):
        bin_groups.setdefault(b, []).append(i)

    train_idx, val_idx, test_idx = [], [], []
    for b, indices in bin_groups.items():
        rng.shuffle(indices)
        n_b = len(indices)
        n_train = max(1, int(n_b * train_r))
        n_val = max(1, int(n_b * val_r))
        train_idx.extend(indices[:n_train])
        val_idx.extend(indices[n_train:n_train + n_val])
        test_idx.extend(indices[n_train + n_val:])

    def select(idxs):
        return [names[i] for i in idxs], [stats[i] for i in idxs]

    return select(train_idx), select(val_idx), select(test_idx)


# ─── ONNX Export ──────────────────────────────────────────────────────────────

def export_onnx(model: PlanetNameLSTM, char_to_idx: dict, idx_to_char: dict,
                output_dir: str, device: torch.device):
    """Export model to ONNX (fp32 + fp16) and save vocab.json."""
    model.eval()
    step_model = PlanetNameLSTMStep(model).to(device)
    step_model.eval()

    # Dummy inputs
    stats_init = torch.randn(1, STATS, device=device)
    stats = torch.randn(1, STATS, device=device)
    char_in = torch.tensor([[SOS_IDX]], dtype=torch.long, device=device)
    h_in = torch.zeros(1, 1, HIDDEN, device=device)
    c_in = torch.zeros(1, 1, HIDDEN, device=device)

    onnx_path = os.path.join(output_dir, "planet_namer.onnx")
    fp16_path = os.path.join(output_dir, "planet_namer_fp16.onnx")
    vocab_path = os.path.join(output_dir, "vocab.json")

    # Export fp32 (use legacy exporter to avoid onnxscript dependency)
    torch.onnx.export(
        step_model,
        (stats_init, stats, char_in, h_in, c_in),
        onnx_path,
        opset_version=13,
        input_names=["stats_init", "stats", "char_in", "h_in", "c_in"],
        output_names=["logits", "h_out", "c_out"],
        dynamic_axes=None,  # Fixed shapes
        dynamo=False,
    )
    print(f"  Exported fp32 ONNX: {onnx_path}")

    # Constant fold
    try:
        import onnx
        from onnx import shape_inference
        m = onnx.load(onnx_path)
        m = shape_inference.infer_shapes(m)
        onnx.save(m, onnx_path)
        print(f"  Shape inference applied")
    except ImportError:
        print("  Warning: onnx package not installed, skipping shape inference")

    # Convert to fp16
    try:
        from onnxconverter_common import float16
        import onnx
        m = onnx.load(onnx_path)
        m_fp16 = float16.convert_float_to_float16(m, keep_io_types=True)
        onnx.save(m_fp16, fp16_path)
        fp16_size = os.path.getsize(fp16_path)
        print(f"  Exported fp16 ONNX: {fp16_path} ({fp16_size / 1024:.1f} KB)")
    except ImportError:
        print("  Warning: onnxconverter-common not installed, skipping fp16 conversion")
        fp16_path = None

    # Save vocab
    vocab_data = {
        "char_to_idx": char_to_idx,
        "idx_to_char": {str(k): v for k, v in idx_to_char.items()},
        "stat_order": STAT_COLS,
        "hidden_size": HIDDEN,
        "embed_size": EMBED,
        "max_len": MAX_LEN,
        "pad_idx": PAD_IDX,
        "sos_idx": SOS_IDX,
        "eos_idx": EOS_IDX,
    }
    with open(vocab_path, "w", encoding="utf-8") as f:
        json.dump(vocab_data, f, indent=2)
    print(f"  Saved vocab: {vocab_path}")

    return onnx_path, fp16_path, vocab_path


# ─── Validation (ONNX) ───────────────────────────────────────────────────────

def validate_onnx(onnx_path: str, vocab_path: str, sample_stats: list[list[float]],
                  sample_names: list[str]):
    """Validate ONNX model loads and generates plausible names."""
    try:
        import onnxruntime as ort
    except ImportError:
        print("  Warning: onnxruntime not installed, skipping ONNX validation")
        return

    with open(vocab_path, "r") as f:
        vocab = json.load(f)
    char_to_idx = vocab["char_to_idx"]
    idx_to_char = vocab["idx_to_char"]

    session = ort.InferenceSession(onnx_path)

    print("\n  ONNX generation samples (T=0.1):")
    for stats, name in zip(sample_stats[:5], sample_names[:5]):
        gen = generate_name_onnx(session, stats, char_to_idx, idx_to_char,
                                 temperature=0.1)
        print(f"    {name:20s} → {gen}")

    print("\n  ONNX generation samples (T=1.0, random stats):")
    for _ in range(5):
        rand_stats = [random.random() for _ in range(STATS)]
        gen = generate_name_onnx(session, rand_stats, char_to_idx, idx_to_char,
                                 temperature=1.0)
        print(f"    {gen}")


# ─── Training Loop ────────────────────────────────────────────────────────────

def _run_phase(model, dataset, optimizer, scheduler, criterion, device,
               batch_size, epochs, phase_name, eval_every=100):
    """Run one training phase."""
    loader = DataLoader(dataset, batch_size=batch_size, shuffle=True,
                        drop_last=False, num_workers=0)

    for epoch in range(1, epochs + 1):
        model.train()
        total_loss = 0.0
        n_batches = 0

        for input_seq, target_seq, stats_batch in loader:
            input_seq = input_seq.to(device)
            target_seq = target_seq.to(device)
            stats_batch = stats_batch.to(device)

            optimizer.zero_grad()
            logits = model(input_seq, stats_batch)
            loss = criterion(logits.reshape(-1, logits.size(-1)), target_seq.reshape(-1))
            loss.backward()
            nn.utils.clip_grad_norm_(model.parameters(), max_norm=1.0)
            optimizer.step()

            total_loss += loss.item()
            n_batches += 1

        scheduler.step()
        avg_loss = total_loss / n_batches

        if epoch % eval_every == 0 or epoch == epochs:
            print(f"  [{phase_name}] Epoch {epoch:3d}/{epochs} | "
                  f"batch={batch_size} | train_loss={avg_loss:.4f}")

    return avg_loss


def train(model: PlanetNameLSTM, train_dataset: PlanetNameDataset,
          val_names: list[str], val_stats: list[list[float]],
          train_names_set: set[str], train_names_list: list[str],
          char_to_idx: dict, idx_to_char: dict,
          epochs: int, batch_size: int, lr: float,
          device: torch.device, eval_every: int = 10) -> PlanetNameLSTM:
    """3-phase training: large batch warmup → medium batch → small batch polish."""
    model.to(device)
    criterion = nn.CrossEntropyLoss(ignore_index=PAD_IDX)

    # Phase 1: Large batch, high LR (bulk learning)
    phase1_epochs = epochs
    opt1 = torch.optim.AdamW(model.parameters(), lr=lr, weight_decay=1e-4)
    sched1 = torch.optim.lr_scheduler.CosineAnnealingLR(opt1, T_max=phase1_epochs)
    print(f"  Phase 1: batch={batch_size}, lr={lr}, {phase1_epochs} epochs")
    _run_phase(model, train_dataset, opt1, sched1, criterion, device,
               batch_size, phase1_epochs, "P1")

    # Phase 2: Smaller batch, lower LR (fine-grained updates)
    phase2_bs = max(16, batch_size // 4)
    phase2_lr = lr / 3
    phase2_epochs = max(100, epochs * 3 // 5)
    opt2 = torch.optim.AdamW(model.parameters(), lr=phase2_lr, weight_decay=1e-4)
    sched2 = torch.optim.lr_scheduler.CosineAnnealingLR(opt2, T_max=phase2_epochs)
    print(f"  Phase 2: batch={phase2_bs}, lr={phase2_lr:.1e}, {phase2_epochs} epochs")
    _run_phase(model, train_dataset, opt2, sched2, criterion, device,
               phase2_bs, phase2_epochs, "P2")

    # Phase 3: Small batch, low LR (polish)
    phase3_bs = max(8, batch_size // 8)
    phase3_lr = lr / 10
    phase3_epochs = max(100, epochs * 2 // 5)
    opt3 = torch.optim.AdamW(model.parameters(), lr=phase3_lr, weight_decay=1e-4)
    sched3 = torch.optim.lr_scheduler.CosineAnnealingLR(opt3, T_max=phase3_epochs)
    print(f"  Phase 3: batch={phase3_bs}, lr={phase3_lr:.1e}, {phase3_epochs} epochs")
    last_loss = _run_phase(model, train_dataset, opt3, sched3, criterion, device,
                           phase3_bs, phase3_epochs, "P3")

    print(f"\n  Final train_loss={last_loss:.4f}")
    return model


# ─── Main ─────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="Train Planet Name Generator")
    parser.add_argument("--data", type=str, required=True,
                        help="Path to training_data.csv")
    parser.add_argument("--epochs", type=int, default=500)
    parser.add_argument("--batch-size", type=int, default=128)
    parser.add_argument("--lr", type=float, default=3e-3)
    parser.add_argument("--seed", type=int, default=42)
    parser.add_argument("--output-dir", type=str, default=".",
                        help="Directory for ONNX and vocab output")
    parser.add_argument("--no-export", action="store_true",
                        help="Skip ONNX export")
    parser.add_argument("--device", type=str, default=None,
                        help="Device (auto-detected if omitted)")
    args = parser.parse_args()

    # Seed
    random.seed(args.seed)
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)

    # Device
    if args.device:
        device = torch.device(args.device)
    elif torch.cuda.is_available():
        device = torch.device("cuda")
    else:
        device = torch.device("cpu")
    print(f"Device: {device}")

    # Load data
    print("Loading data...")
    names, stats = load_data(args.data)
    print(f"  Loaded {len(names)} planets")

    # Spread collision groups for unique stat vectors
    stats = spread_collisions(names, stats, seed=args.seed)

    # Build vocab
    char_to_idx, idx_to_char = build_vocab(names)
    vocab_size = len(char_to_idx)
    print(f"  Vocab size: {vocab_size} tokens")

    # Split
    (train_names, train_stats), (val_names, val_stats), (test_names, test_stats) = \
        stratified_split(names, stats)
    print(f"  Split: {len(train_names)} train / {len(val_names)} val / {len(test_names)} test")

    train_names_set = set(train_names)
    train_names_list = train_names

    # Dataset
    train_dataset = PlanetNameDataset(train_names, train_stats, char_to_idx)

    # Model
    model = PlanetNameLSTM(vocab_size)
    print(f"  Model params: {model.param_count():,} (~{model.param_count() * 2 / 1024:.0f} KB fp16)")

    # Train
    print("\nTraining...")
    model = train(model, train_dataset, val_names, val_stats,
                  train_names_set, train_names_list,
                  char_to_idx, idx_to_char,
                  epochs=args.epochs, batch_size=args.batch_size,
                  lr=args.lr, device=device)

    # Training set reconstruction (the main goal)
    print("\nTraining set reconstruction (T=0.1):")
    train_exact = 0
    for name, stat in zip(train_names, train_stats):
        gen = generate_name_pytorch(model, stat, char_to_idx, idx_to_char, temperature=0.1)
        if gen == name:
            train_exact += 1
    print(f"  Exact match: {train_exact}/{len(train_names)} = {train_exact/len(train_names):.1%}")

    # Test set evaluation (generalization)
    print("\nTest set evaluation:")
    test_metrics = evaluate(model, test_names, test_stats, train_names_set,
                            train_names_list, char_to_idx, idx_to_char, device)
    print(f"  exact_match={test_metrics['exact_match_rate']:.1%} | "
          f"edit_dist={test_metrics['avg_edit_distance']:.2f} | "
          f"novelty={test_metrics['novelty_rate']:.1%} | "
          f"bigram_kl={test_metrics['bigram_kl']:.4f}")

    # Sample known planet reconstructions
    print("\nIconic planet reconstructions (T=0.1):")
    iconics = ['Tatooine', 'Arrakis', 'Hoth', 'Coruscant', 'Vulcan', 'Thessia',
               'Pandora', 'Caladan', 'Naboo', 'Endor', 'Kamino', 'Mustafar',
               'Felucia', 'Dagobah', 'Bespin', 'Kashyyyk']
    for icon in iconics:
        if icon in names:
            idx = names.index(icon)
            gen = generate_name_pytorch(model, stats[idx], char_to_idx, idx_to_char, temperature=0.1)
            match = "✓" if gen == icon else "✗"
            print(f"  {match} {icon:20s} → {gen}")

    print("\nSample train reconstructions (T=0.1):")
    for name, stat in zip(train_names[:10], train_stats[:10]):
        gen = generate_name_pytorch(model, stat, char_to_idx, idx_to_char, temperature=0.1)
        match = "✓" if gen == name else "✗"
        print(f"  {match} {name:20s} → {gen}")

    print("\nNovel names (T=1.0, random stats):")
    for _ in range(10):
        rand_stats = [random.random() for _ in range(STATS)]
        gen = generate_name_pytorch(model, rand_stats, char_to_idx, idx_to_char, temperature=1.0)
        print(f"  {gen}")

    # Export
    if not args.no_export:
        print("\nExporting ONNX...")
        onnx_path, fp16_path, vocab_path = export_onnx(
            model, char_to_idx, idx_to_char, args.output_dir, device)

        # Validate ONNX
        target_path = fp16_path if fp16_path and os.path.exists(fp16_path) else onnx_path
        print(f"\nValidating ONNX ({os.path.basename(target_path)})...")
        validate_onnx(target_path, vocab_path, test_stats, test_names)

    print("\nDone.")


if __name__ == "__main__":
    main()
