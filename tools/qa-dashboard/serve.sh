#!/usr/bin/env bash
#
# Start the QA dashboard web server.
# Node.js server with API endpoints for snap/record and Play Console integration.
# http://localhost:9124
#
# Usage:
#   ./serve.sh           # foreground
#   ./serve.sh &         # background

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "QA Dashboard starting at http://localhost:9124"
cd "$SCRIPT_DIR"
node server.js
