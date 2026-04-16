#!/usr/bin/env bash
#
# Deploy the Stellar Broadcast website to the production server.
#
# Usage:
#   ./scripts/deploy-website.sh
#
# Stages HTML from website/ plus binary assets (images, videos, audio) from
# assets/, marketing/, and assets/audio/ into a temp dir, then uploads the
# whole tree to sirus@memepipe.tv:/var/www/stellarbroadcast/.
#
# Source of truth for binaries stays in assets/ — we rename during staging
# (e.g. Icon_512.png -> icon.png) so index.html can use short filenames.
#
# NOTE: post-RAID-wipe rebuild on 2026-04-14 moved the box from Debian to
# Arch and from nginx to Caddy. Web root is now /var/www/stellarbroadcast
# (no ".org" suffix — matches the Caddy vhost root in
# memepipe/caddy/Caddyfile) and files are owned by caddy:caddy, not
# www-data.
#
# Requires SSH access and sudoers on the server.

set -euo pipefail
cd "$(dirname "$0")/.."

SERVER="sirus@memepipe.tv"
REMOTE_DIR="/var/www/stellarbroadcast"
WEB_USER="caddy"
WEB_GROUP="caddy"

STAGE=$(mktemp -d)
trap 'rm -rf "$STAGE"' EXIT

echo "Staging files to $STAGE..."

# HTML (press.html becomes press/index.html on the remote)
cp website/*.html "$STAGE/"

# Hero icon (renamed from Icon_512.png)
cp assets/Icon_512.png "$STAGE/icon.png"

# Feature banner
cp assets/feature.png "$STAGE/feature.png"

# Screenshot stills and gameplay clips referenced by index.html's gallery
cp assets/screenshots/stellarbroadcast2.png "$STAGE/"
cp assets/screenshots/stellarbroadcast3.png "$STAGE/"
cp assets/screenshots/stellarbroadcast4.png "$STAGE/"
cp assets/screenshots/stellarbroadcast5.png "$STAGE/"
cp assets/screenshots/stellarbroadcast6.png "$STAGE/"
cp assets/screenshots/stellarbroadcast1.webm "$STAGE/"
cp assets/screenshots/crystaline.webm "$STAGE/"
cp assets/screenshots/starfield.webm "$STAGE/"
cp assets/screenshots/spectral.webm "$STAGE/"
cp assets/screenshots/chiral.webm "$STAGE/"

# Play Store QR code
cp marketing/qr_playstore.png "$STAGE/"

# Background music for the hero section
cp assets/audio/bgmusic.ogg "$STAGE/"

echo "Uploading to $SERVER..."
TMPDIR=$(ssh "$SERVER" mktemp -d)

# rsync is incremental: first deploy ships everything, subsequent deploys
# only transfer changed files.
rsync -az "$STAGE/" "$SERVER:$TMPDIR/"

echo "Moving into place on $REMOTE_DIR..."
ssh "$SERVER" bash -s "$TMPDIR" "$REMOTE_DIR" "$WEB_USER" "$WEB_GROUP" << 'REMOTE'
  set -e
  TMPDIR="$1"
  REMOTE_DIR="$2"
  WEB_USER="$3"
  WEB_GROUP="$4"
  cd "$TMPDIR"

  sudo install -d -m 755 -o "$WEB_USER" -g "$WEB_GROUP" "$REMOTE_DIR"

  # press.html goes to press/index.html; everything else lands at REMOTE_DIR root
  if [ -f press.html ]; then
    sudo install -d -m 755 -o "$WEB_USER" -g "$WEB_GROUP" "$REMOTE_DIR/press"
    sudo install -m 644 -o "$WEB_USER" -g "$WEB_GROUP" press.html "$REMOTE_DIR/press/index.html"
    rm press.html
  fi

  for f in *; do
    sudo install -m 644 -o "$WEB_USER" -g "$WEB_GROUP" "$f" "$REMOTE_DIR/$f"
  done

  rm -rf "$TMPDIR"
REMOTE

echo "Done. Website deployed to https://stellarbroadcast.org"
