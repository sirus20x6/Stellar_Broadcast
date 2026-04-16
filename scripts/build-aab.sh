#!/usr/bin/env bash
#
# Build a release AAB (App Bundle) for Starbound Exodus.
# This is the format required for Google Play Store uploads.
#
# Usage:
#   ./scripts/build-aab.sh
#
# Output: build/app/outputs/bundle/release/app-release.aab

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

# Leaderboard API key is required for release builds. It is a compile-time
# secret injected via --dart-define. Put it in apps/starbound_exodus/.env
# (gitignored) or export it in your shell before running this script.
if [ -z "${LEADERBOARD_API_KEY:-}" ]; then
  echo "Error: LEADERBOARD_API_KEY is not set." >&2
  echo "       Add it to apps/starbound_exodus/.env or export it before building." >&2
  echo "       Release AABs must not ship with leaderboards disabled." >&2
  exit 1
fi
DART_DEFINES+=(--dart-define=LEADERBOARD_API_KEY="$LEADERBOARD_API_KEY")

VERSION=$(grep '^version:' pubspec.yaml | awk '{print $2}')
echo "Building AAB for Stellar Broadcast v$VERSION"

flutter build appbundle --release "${DART_DEFINES[@]}"

AAB="build/app/outputs/bundle/release/app-release.aab"
SIZE=$(du -h "$AAB" | awk '{print $1}')
echo ""
echo "Built: $AAB ($SIZE)"
echo "Ready for Play Store upload."
