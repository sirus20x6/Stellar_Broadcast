#!/usr/bin/env bash
# Fetch bug reports from the stellarbroadcast-api SQLite DB on memepipe.tv.
#
# Usage:
#   fetch-bugreports.sh                    # list most recent 10
#   fetch-bugreports.sh -n 25              # list most recent 25
#   fetch-bugreports.sh --since 2026-04-01 # list reports since a date
#   fetch-bugreports.sh -i 7               # show full detail of report id 7
#   fetch-bugreports.sh --sync             # rsync the whole DB locally
#
# Requires: ssh access to sirus@memepipe.tv (passwordless sudo on the remote).
# Optional: jq for pretty-printing in --id detail view.
set -euo pipefail

SERVER="sirus@memepipe.tv"
REMOTE_DB="/var/lib/stellarbroadcast/scores.db"
LOCAL_CACHE_DIR="${HOME}/.cache/stellarbroadcast"
LOCAL_DB="${LOCAL_CACHE_DIR}/scores.db"

limit=10
since=""
detail_id=""
do_sync=false

usage() {
  sed -n '3,11p' "$0" | sed 's/^# \{0,1\}//'
  exit 1
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    -n|--limit)    limit="$2"; shift 2 ;;
    --since)       since="$2"; shift 2 ;;
    -i|--id)       detail_id="$2"; shift 2 ;;
    --sync)        do_sync=true; shift ;;
    -h|--help)     usage ;;
    *)             echo "unknown arg: $1" >&2; usage ;;
  esac
done

run_remote_sql() {
  local sql="$1"
  ssh "$SERVER" "sudo -n sqlite3 -readonly $REMOTE_DB \"$sql\"" 2>/dev/null |
    grep -Ev '^[[:space:]]*(WARNING|post-quantum|vulnerable|openssh)' |
    grep -Ev '^[[:space:]]*[┌│└─]'
}

if $do_sync; then
  mkdir -p "$LOCAL_CACHE_DIR"
  # Use cat + sudo to sidestep permissions — rsync as stellarbroadcast user
  # would need its own ssh key setup. `cat` through ssh is simple and
  # adequately fast for a DB that'll never be more than a few MB.
  ssh "$SERVER" "sudo -n cat $REMOTE_DB" > "$LOCAL_DB"
  wal_size=$(ssh "$SERVER" "sudo -n stat -c %s ${REMOTE_DB}-wal 2>/dev/null || echo 0")
  if [[ "$wal_size" -gt 0 ]]; then
    ssh "$SERVER" "sudo -n cat ${REMOTE_DB}-wal" > "${LOCAL_DB}-wal"
  fi
  echo "synced to $LOCAL_DB"
  exit 0
fi

# Detail view: dump everything for one report id.
if [[ -n "$detail_id" ]]; then
  raw=$(run_remote_sql "SELECT raw_json FROM bug_reports WHERE id = $detail_id;")
  if [[ -z "$raw" ]]; then
    echo "no report with id=$detail_id" >&2
    exit 1
  fi
  meta=$(run_remote_sql "SELECT id || '|' || submitted || '|' || COALESCE(ip,'') FROM bug_reports WHERE id = $detail_id;")
  IFS='|' read -r id submitted ip <<< "$meta"
  echo "=== bug report #$id ==="
  echo "Submitted: $submitted"
  echo "IP:        $ip"
  echo
  if command -v jq >/dev/null 2>&1; then
    printf '%s' "$raw" | jq -r '
      "App:       \(.app.name // "?") \(.app.version // "?")+\(.app.buildNumber // "?")",
      "Package:   \(.app.package // "?")",
      "OS:        \(.platform.os // "?") \(.platform.osVersion // "?")",
      "Locale:    \(.platform.locale // "?")",
      "CPUs:      \(.platform.cpus // "?")",
      "",
      "--- User message ---",
      (.userMessage // "(empty)"),
      "",
      "--- Logs (\(.logs | length)) ---",
      (.logs[]? // empty)
    '
  else
    echo "(install jq for pretty detail view — showing raw JSON)"
    echo
    printf '%s\n' "$raw"
  fi
  exit 0
fi

# Summary view.
where=""
if [[ -n "$since" ]]; then
  where="WHERE submitted >= '$since'"
fi

# Pull the summary with a distinctive separator so we can pretty-print locally.
rows=$(run_remote_sql "
SELECT
  printf('%-4d  %-19s  %-10s  %-10s  %-15s  %s',
    id,
    submitted,
    COALESCE(substr(app_version,1,10),''),
    COALESCE(substr(os,1,10),''),
    COALESCE(substr(ip,1,15),''),
    COALESCE(substr(replace(user_message, char(10), ' '), 1, 60), '(no message)')
  )
FROM bug_reports
$where
ORDER BY id DESC
LIMIT $limit;
")

if [[ -z "$rows" ]]; then
  echo "no reports found"
  exit 0
fi

printf '%-4s  %-19s  %-10s  %-10s  %-15s  %s\n' "ID" "SUBMITTED (UTC)" "VERSION" "OS" "IP" "MESSAGE"
printf '%-4s  %-19s  %-10s  %-10s  %-15s  %s\n' "----" "-------------------" "----------" "----------" "---------------" "-------"
printf '%s\n' "$rows"
echo
echo "(detail: $0 --id <N>)"
