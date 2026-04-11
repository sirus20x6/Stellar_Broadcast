#!/usr/bin/env bash
#
# Deploy the Stellar Broadcast website to the production server.
#
# Usage:
#   ./scripts/deploy-website.sh
#
# Deploys all HTML files from website/ to sirus@memepipe.tv:/var/www/stellarbroadcast.org/
# Requires SSH access and sudoers on the server.

set -euo pipefail
cd "$(dirname "$0")/.."

SERVER="sirus@memepipe.tv"
REMOTE_DIR="/var/www/stellarbroadcast.org"
LOCAL_DIR="website"

if [ ! -d "$LOCAL_DIR" ]; then
  echo "Error: $LOCAL_DIR directory not found"
  exit 1
fi

echo "Deploying website to $SERVER:$REMOTE_DIR"

# Upload to temp directory first (no sudo needed for scp)
TMPDIR=$(ssh "$SERVER" mktemp -d)

for f in "$LOCAL_DIR"/*.html; do
  name=$(basename "$f")
  echo "  Uploading $name"
  scp -q "$f" "$SERVER:$TMPDIR/$name"
done

# Move into place with correct ownership
ssh "$SERVER" bash -s "$TMPDIR" "$REMOTE_DIR" << 'REMOTE'
  TMPDIR="$1"
  REMOTE_DIR="$2"

  # Main site files
  for f in "$TMPDIR"/*.html; do
    name=$(basename "$f")
    if [ "$name" = "press.html" ]; then
      sudo cp "$f" "$REMOTE_DIR/press/index.html"
      sudo chown www-data:www-data "$REMOTE_DIR/press/index.html"
    else
      sudo cp "$f" "$REMOTE_DIR/$name"
      sudo chown www-data:www-data "$REMOTE_DIR/$name"
    fi
  done

  rm -rf "$TMPDIR"
REMOTE

echo "Done. Website deployed to https://stellarbroadcast.org"
