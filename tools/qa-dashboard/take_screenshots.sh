#!/usr/bin/env bash
#
# Automated QA screenshot tool for Stellar Broadcast.
# Navigates through all game screens via deep links and captures screenshots.
# Uses Waydroid for both phone and tablet by restarting in the appropriate mode.
#
# Usage:
#   ./take_screenshots.sh              # Current Waydroid mode (no restart)
#   ./take_screenshots.sh phone        # Restart Waydroid in phone mode (540x960)
#   ./take_screenshots.sh tablet       # Restart Waydroid in tablet mode (1280x800)
#   ./take_screenshots.sh both         # Phone then tablet (restarts between)
#   ./take_screenshots.sh all          # Same as both
#   ./take_screenshots.sh waydroid     # Current mode (no restart, default)
#
# Options:
#   --record    Also capture 3-second webm screen recordings per screen
#
# Prerequisites:
#   - App must be deployed to Waydroid (scripts/deploy-waydroid.sh)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SCREENSHOT_DIR="$SCRIPT_DIR/screenshots"
PACKAGE="com.quickapps.stellar_broadcast"
WAYDROID_ADB="192.168.240.112:5555"
DEEP_LINK_BASE="stellarbroadcast://play?skip=true&screen="
START_WAYDROID="/thearray/git/waydroid/start-waydroid.sh"
WAYDROID_LOG="/tmp/waydroid-screenshots.log"
RECORD=false

# All screens to capture (matches app.dart route table)
SCREENS=(
  title
  voyage
  scan
  event
  puzzle
  black-hole
  living-nebula
  seed-vault
  dyson-sphere
  world-engine
  mirror-array
  chrono-vortex
  void-whale
  phantom-ship
  singularity-engine
  pulsar-lighthouse
  landing
  landing-sequence
  ending
  gameover
  legacy
  codex
  settings
  ship-status
  trader
)

# Restart Waydroid in the given mode and wait for ADB.
restart_waydroid() {
  local mode="$1"
  echo ""
  echo "=== Restarting Waydroid in $mode mode ==="

  # Stop any existing session
  waydroid session stop 2>/dev/null || true
  pkill -f "weston.*waydroid" 2>/dev/null || true
  sleep 2

  # Start in background (the script blocks on 'wait $WESTON_PID' at the end)
  bash "$START_WAYDROID" "$mode" > "$WAYDROID_LOG" 2>&1 &

  # Poll for ADB connectivity
  echo -n "  Waiting for ADB"
  for i in $(seq 1 90); do
    adb connect "$WAYDROID_ADB" > /dev/null 2>&1 || true
    if adb -s "$WAYDROID_ADB" shell echo ok 2>/dev/null | grep -q ok; then
      echo " ready! (${i}s)"
      # Give the UI a moment to finish launching
      sleep 3
      return 0
    fi
    echo -n "."
    sleep 2
  done
  echo " TIMEOUT (see $WAYDROID_LOG)"
  return 1
}

take_screenshots() {
  local device="$1"
  local label="$2"
  local outdir="$SCREENSHOT_DIR/$label"

  mkdir -p "$outdir"
  echo ""
  echo "=== Capturing $label ($device) ==="

  # Force stop and relaunch to get clean state
  adb -s "$device" shell am force-stop "$PACKAGE" 2>/dev/null || true
  sleep 1
  adb -s "$device" shell am start -n "$PACKAGE/.MainActivity" 2>/dev/null
  sleep 3

  # Start a voyage so game screens have state
  adb -s "$device" shell "am start -a android.intent.action.VIEW \
    -d '${DEEP_LINK_BASE}voyage' '${PACKAGE}'" 2>/dev/null
  sleep 2

  for screen in "${SCREENS[@]}"; do
    adb -s "$device" shell "am start -a android.intent.action.VIEW \
      -d '${DEEP_LINK_BASE}${screen}' '${PACKAGE}'" 2>/dev/null
    sleep 2
    adb -s "$device" exec-out screencap -p > "$outdir/${screen}.png" 2>/dev/null

    # Optional: capture a 3-second webm screen recording
    if [ "$RECORD" = true ]; then
      local remote="/sdcard/${screen}.mp4"
      adb -s "$device" shell "screenrecord --time-limit 3 --size 720x1280 '$remote'" 2>/dev/null &
      local rec_pid=$!
      sleep 4
      kill "$rec_pid" 2>/dev/null || true
      wait "$rec_pid" 2>/dev/null || true
      adb -s "$device" pull "$remote" "$outdir/${screen}.webm" 2>/dev/null
      adb -s "$device" shell "rm -f '$remote'" 2>/dev/null
    fi

    echo "  Captured: $screen"
  done

  echo "  Screenshots saved to $outdir/"
  echo "  Total: ${#SCREENS[@]} screens"
}

# Save build metadata
save_build_info() {
  local build_info
  build_info=$(adb -s "$WAYDROID_ADB" shell dumpsys package "$PACKAGE" 2>/dev/null \
    | grep -E 'versionName|versionCode' | head -2 | tr -d ' ' | tr '\n' ' ') || true
  local mode
  mode=$(cat /tmp/waydroid-mode 2>/dev/null || echo "unknown")
  echo "Stellar Broadcast ${build_info}| $(date '+%Y-%m-%d %H:%M') | mode=$mode" \
    > "$SCREENSHOT_DIR/build-info.txt"
}

# Parse arguments
MODE="waydroid"
for arg in "$@"; do
  case "$arg" in
    --record) RECORD=true ;;
    *) MODE="$arg" ;;
  esac
done

case "$MODE" in
  waydroid)
    adb connect "$WAYDROID_ADB" > /dev/null 2>&1 || true
    take_screenshots "$WAYDROID_ADB" "waydroid"
    ;;
  phone)
    restart_waydroid phone
    take_screenshots "$WAYDROID_ADB" "phone"
    ;;
  tablet)
    restart_waydroid tablet
    take_screenshots "$WAYDROID_ADB" "tablet"
    ;;
  both|all)
    restart_waydroid phone
    take_screenshots "$WAYDROID_ADB" "phone"
    restart_waydroid tablet
    take_screenshots "$WAYDROID_ADB" "tablet"
    ;;
  *)
    echo "Usage: $0 [waydroid|phone|tablet|both|all]"
    exit 1
    ;;
esac

save_build_info

echo ""
echo "Done. View screenshots at $SCREENSHOT_DIR/"
echo "Or start the QA dashboard: $SCRIPT_DIR/serve.sh"
