#!/usr/bin/env bash
#
# Build a release APK for Starbound Exodus.
#
# Usage:
#   ./scripts/build-apk.sh              # normal release build
#   ./scripts/build-apk.sh --force-ads   # force ads on (QA testing on premium accounts)
#
# Output: build/app/outputs/flutter-apk/app-release.apk

set -euo pipefail
cd "$(dirname "$0")/.."

DART_DEFINES=()
for arg in "$@"; do
  case "$arg" in
    --force-ads) DART_DEFINES+=(--dart-define=FORCE_ADS=true) ;;
    *) echo "Unknown option: $arg"; exit 1 ;;
  esac
done

VERSION=$(grep '^version:' pubspec.yaml | awk '{print $2}')
echo "Building APK for Stellar Broadcast v$VERSION"
if [ ${#DART_DEFINES[@]} -gt 0 ]; then
  echo "  Dart defines: ${DART_DEFINES[*]}"
fi

flutter build apk --release "${DART_DEFINES[@]}"

APK="build/app/outputs/flutter-apk/app-release.apk"
SIZE=$(du -h "$APK" | awk '{print $1}')
echo ""
echo "Built: $APK ($SIZE)"
