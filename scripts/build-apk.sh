#!/usr/bin/env bash
#
# Build a release APK for Starbound Exodus.
#
# Usage:
#   ./scripts/build-apk.sh         # normal release build
#   ./scripts/build-apk.sh --qa    # enable debug deep links (for QA screenshot automation)
#
# For ad QA, run a debug build (flutter run / debug APK) — ads are always
# on in debug mode regardless of premium status.
#
# Output: build/app/outputs/flutter-apk/app-release.apk

set -euo pipefail
cd "$(dirname "$0")/.."

# Load build secrets from .env if present (gitignored, see .gitignore).
# Expected keys: LEADERBOARD_API_KEY
if [ -f ".env" ]; then
  set -a
  # shellcheck disable=SC1091
  source .env
  set +a
fi

DART_DEFINES=()
for arg in "$@"; do
  case "$arg" in
    --qa) DART_DEFINES+=(--dart-define=QA_MODE=true) ;;
    *) echo "Unknown option: $arg"; exit 1 ;;
  esac
done

# Leaderboard API key is required. Compile-time secret injected via --dart-define.
# Put it in apps/starbound_exodus/.env (gitignored) or export it in your shell.
if [ -z "${LEADERBOARD_API_KEY:-}" ]; then
  echo "Error: LEADERBOARD_API_KEY is not set." >&2
  echo "       Add it to apps/starbound_exodus/.env or export it before building." >&2
  exit 1
fi
DART_DEFINES+=(--dart-define=LEADERBOARD_API_KEY="$LEADERBOARD_API_KEY")

VERSION=$(grep '^version:' pubspec.yaml | awk '{print $2}')
echo "Building APK for Stellar Broadcast v$VERSION"
if [ ${#DART_DEFINES[@]} -gt 0 ]; then
  # Redact any keys from the printed output so we don't echo secrets into logs.
  SAFE_DEFINES=$(printf '%s\n' "${DART_DEFINES[@]}" | sed 's/\(LEADERBOARD_API_KEY=\).*/\1<redacted>/' | tr '\n' ' ')
  echo "  Dart defines: $SAFE_DEFINES"
fi

flutter build apk --release "${DART_DEFINES[@]}"

APK="build/app/outputs/flutter-apk/app-release.apk"
SIZE=$(du -h "$APK" | awk '{print $1}')
echo ""
echo "Built: $APK ($SIZE)"
