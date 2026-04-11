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

VERSION=$(grep '^version:' pubspec.yaml | awk '{print $2}')
echo "Building AAB for Stellar Broadcast v$VERSION"

flutter build appbundle --release

AAB="build/app/outputs/bundle/release/app-release.aab"
SIZE=$(du -h "$AAB" | awk '{print $1}')
echo ""
echo "Built: $AAB ($SIZE)"
echo "Ready for Play Store upload."
