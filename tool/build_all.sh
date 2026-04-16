#!/bin/bash
# Build all platform artifacts for Stellar Broadcast.
#
# Usage:
#   ./tool/build_all.sh           # build everything possible on this OS
#   ./tool/build_all.sh android   # only Android variants
#   ./tool/build_all.sh ios       # only iOS
#   ./tool/build_all.sh desktop   # only desktop (current OS)
#
# Note: macOS/iOS builds require macOS. Windows builds require Windows.
#       Linux builds require Linux. Android builds work on any OS.

set -euo pipefail
cd "$(dirname "$0")/.."

VERSION=$(grep '^version:' pubspec.yaml | head -1 | awk '{print $2}' | cut -d'+' -f1)
BUILD=$(grep '^version:' pubspec.yaml | head -1 | awk '{print $2}' | cut -d'+' -f2)
OUT="build/release/${VERSION}+${BUILD}"
mkdir -p "$OUT"

TARGET="${1:-all}"

echo "=== Stellar Broadcast v${VERSION}+${BUILD} ==="
echo "Output: $OUT"
echo ""

# ─── Android variants ───────────────────────────────────────────────
if [[ "$TARGET" == "all" || "$TARGET" == "android" ]]; then

  echo "[1/8] Google Play (AAB)..."
  flutter build appbundle --release --build-number="$BUILD"
  cp build/app/outputs/bundle/release/app-release.aab "$OUT/stellar_broadcast_google_play.aab"
  echo "  -> $OUT/stellar_broadcast_google_play.aab"

  echo "[2/8] Amazon Appstore (APK, premium)..."
  flutter build apk --release --dart-define=STORE=amazon --build-number="$BUILD"
  cp build/app/outputs/flutter-apk/app-release.apk "$OUT/stellar_broadcast_amazon.apk"
  echo "  -> $OUT/stellar_broadcast_amazon.apk"

  echo "[3/8] Samsung Galaxy Store (AAB)..."
  flutter build appbundle --release --dart-define=STORE=samsung --build-number="$BUILD"
  cp build/app/outputs/bundle/release/app-release.aab "$OUT/stellar_broadcast_samsung.aab"
  echo "  -> $OUT/stellar_broadcast_samsung.aab"

  echo "[4/8] Huawei AppGallery (APK, premium)..."
  flutter build apk --release --dart-define=STORE=huawei --build-number="$BUILD"
  cp build/app/outputs/flutter-apk/app-release.apk "$OUT/stellar_broadcast_huawei.apk"
  echo "  -> $OUT/stellar_broadcast_huawei.apk"

fi

# ─── iOS ─────────────────────────────────────────────────────────────
if [[ "$TARGET" == "all" || "$TARGET" == "ios" ]]; then
  if [[ "$(uname)" == "Darwin" ]]; then
    echo "[5/8] iOS (IPA)..."
    flutter build ipa --release --build-number="$BUILD"
    cp build/ios/ipa/*.ipa "$OUT/" 2>/dev/null || echo "  (no IPA produced -- check signing config)"
    echo "  -> $OUT/*.ipa"
  else
    echo "[5/8] iOS -- SKIPPED (requires macOS)"
  fi
fi

# ─── Desktop ─────────────────────────────────────────────────────────
if [[ "$TARGET" == "all" || "$TARGET" == "desktop" ]]; then
  OS="$(uname -s)"

  case "$OS" in
    Linux)
      echo "[6/8] Linux (Steam bundle)..."
      flutter build linux --release --dart-define=STORE=steam --build-number="$BUILD"
      LINUX_DIR="$OUT/stellar_broadcast_linux"
      rm -rf "$LINUX_DIR"
      cp -r build/linux/x64/release/bundle "$LINUX_DIR"
      echo "  -> $LINUX_DIR/"
      ;;
    Darwin)
      echo "[7/8] macOS (Mac App Store)..."
      flutter build macos --release --dart-define=STORE=mac_app_store --build-number="$BUILD"
      MACOS_APP=$(find build/macos/Build/Products/Release -name "*.app" -maxdepth 1 | head -1)
      if [[ -n "$MACOS_APP" ]]; then
        cp -r "$MACOS_APP" "$OUT/"
        echo "  -> $OUT/$(basename "$MACOS_APP")"
      fi
      ;;
    MINGW*|MSYS*|CYGWIN*)
      echo "[8/8] Windows (MSIX for Microsoft Store)..."
      flutter build windows --release --dart-define=STORE=microsoft --build-number="$BUILD"
      dart run msix:create
      MSIX_FILE=$(find build/windows -name "*.msix" | head -1)
      if [[ -n "$MSIX_FILE" ]]; then
        cp "$MSIX_FILE" "$OUT/"
        echo "  -> $OUT/$(basename "$MSIX_FILE")"
      fi

      echo "      Windows (Steam executable)..."
      flutter build windows --release --dart-define=STORE=steam --build-number="$BUILD"
      WIN_DIR="$OUT/stellar_broadcast_windows_steam"
      rm -rf "$WIN_DIR"
      cp -r build/windows/x64/runner/Release "$WIN_DIR"
      echo "  -> $WIN_DIR/"
      ;;
    *)
      echo "  Desktop -- SKIPPED (unknown OS: $OS)"
      ;;
  esac
fi

echo ""
echo "=== Build complete ==="
ls -lh "$OUT/"
