#!/usr/bin/env python3
"""Audit ad-click patterns by device/geography cluster.

GA4's Data API does not expose appInstanceId (per-install IDs are reserved for
the BigQuery export). What it *does* expose is device model, country/city, OS
version, and first-session date — combined, these form a near-unique fingerprint
for most small-audience apps.

For each cluster we pull both [ad_clicked event count] and [active users]:
    clicks / activeUsers  >> 1   → single device rage-clicking
    clicks ≈ activeUsers          → organic, each user clicked ~1 ad

This is the signal we need for an AdMob Limited Ad Serving appeal and to
verify the AdClickThrottle is cutting the tail.

Usage:
    python3 tools/ad_click_audit.py                 # last 7d, threshold 3
    python3 tools/ad_click_audit.py --days 30
    python3 tools/ad_click_audit.py --csv audit.csv
"""
import argparse
import csv
import json
import sys
from pathlib import Path

import requests
from google.auth.transport.requests import Request
from google.oauth2 import service_account

PROPERTY_ID = "529226904"
CREDS_PATH = Path.home() / ".config/gcloud/stellarbroadcast-service-account.json"
GA4_URL = (
    "https://analyticsdata.googleapis.com/v1beta/"
    f"properties/{PROPERTY_ID}:runReport"
)
SCOPE = "https://www.googleapis.com/auth/analytics.readonly"


def get_token() -> str:
    creds = service_account.Credentials.from_service_account_file(
        str(CREDS_PATH), scopes=[SCOPE]
    )
    creds.refresh(Request())
    return creds.token


def query(days: int, limit: int) -> list[dict]:
    """Clusters with ad_clicked counts + active user counts."""
    token = get_token()
    body = {
        "dateRanges": [{"startDate": f"{days}daysAgo", "endDate": "today"}],
        "dimensions": [
            {"name": "country"},
            {"name": "city"},
            {"name": "mobileDeviceMarketingName"},
            {"name": "operatingSystem"},
            {"name": "operatingSystemVersion"},
            {"name": "firstSessionDate"},
        ],
        "metrics": [
            {"name": "eventCount"},
            {"name": "activeUsers"},
        ],
        "dimensionFilter": {
            "filter": {
                "fieldName": "eventName",
                "stringFilter": {"value": "ad_clicked"},
            }
        },
        "orderBys": [
            {"metric": {"metricName": "eventCount"}, "desc": True},
        ],
        "limit": limit,
    }
    r = requests.post(
        GA4_URL,
        headers={
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json",
        },
        data=json.dumps(body),
        timeout=30,
    )
    if not r.ok:
        print(f"GA4 API error {r.status_code}:\n{r.text}", file=sys.stderr)
        r.raise_for_status()
    data = r.json()
    rows = []
    for row in data.get("rows", []):
        dims = [d["value"] for d in row["dimensionValues"]]
        metrics = [m["value"] for m in row["metricValues"]]
        clicks = int(metrics[0])
        users = int(metrics[1]) or 1
        rows.append(
            {
                "clicks": clicks,
                "users": users,
                "cpu": clicks / users,
                "country": dims[0],
                "city": dims[1],
                "device": dims[2] or "(not set)",
                "os": dims[3],
                "os_ver": dims[4],
                "first_seen": dims[5],
            }
        )
    return rows


def total_org(days: int) -> tuple[int, int]:
    """Total ad_clicked events and active users in window (no dims)."""
    token = get_token()
    body = {
        "dateRanges": [{"startDate": f"{days}daysAgo", "endDate": "today"}],
        "metrics": [
            {"name": "eventCount"},
            {"name": "activeUsers"},
        ],
        "dimensionFilter": {
            "filter": {
                "fieldName": "eventName",
                "stringFilter": {"value": "ad_clicked"},
            }
        },
    }
    r = requests.post(
        GA4_URL,
        headers={
            "Authorization": f"Bearer {token}",
            "Content-Type": "application/json",
        },
        data=json.dumps(body),
        timeout=30,
    )
    r.raise_for_status()
    data = r.json()
    rows = data.get("rows", [])
    if not rows:
        return 0, 0
    return int(rows[0]["metricValues"][0]["value"]), int(
        rows[0]["metricValues"][1]["value"]
    )


def color(s: str, clicks: int, cpu: float, threshold: int) -> str:
    # Red: very likely a single attacker (high clicks AND high clicks/user ratio)
    if clicks >= threshold * 3 and cpu >= 3:
        return f"\033[91m{s}\033[0m"
    # Yellow: suspicious (either a big cluster or a high ratio)
    if clicks >= threshold and cpu >= 2:
        return f"\033[93m{s}\033[0m"
    return s


def render(rows: list[dict], threshold: int) -> None:
    if not rows:
        print("\n  (no ad_clicked events in this window)")
        return
    ctry_w = max(7, max(len(r["country"]) for r in rows))
    city_w = max(4, min(20, max(len(r["city"]) for r in rows)))
    dev_w = max(6, min(25, max(len(r["device"]) for r in rows)))
    os_w = 10
    osv_w = 12
    date_w = 10

    header = (
        f"  {'clicks':>6}  {'users':>5}  {'c/u':>5}  "
        f"{'country':<{ctry_w}}  {'city':<{city_w}}  "
        f"{'device':<{dev_w}}  {'os':<{os_w}}  {'osver':<{osv_w}}  "
        f"{'firstSeen':<{date_w}}"
    )
    print()
    print(header)
    print("  " + "-" * (len(header) - 2))
    for r in rows:
        line = (
            f"  {r['clicks']:>6}  {r['users']:>5}  "
            f"{r['cpu']:>5.1f}  "
            f"{r['country'][:ctry_w]:<{ctry_w}}  "
            f"{r['city'][:city_w]:<{city_w}}  "
            f"{r['device'][:dev_w]:<{dev_w}}  "
            f"{r['os'][:os_w]:<{os_w}}  "
            f"{r['os_ver'][:osv_w]:<{osv_w}}  "
            f"{r['first_seen']:<{date_w}}"
        )
        print(color(line, r["clicks"], r["cpu"], threshold))


def summary(rows: list[dict], threshold: int, days: int) -> None:
    total_clicks, total_users = total_org(days)
    flagged = [r for r in rows if r["clicks"] >= threshold and r["cpu"] >= 2]
    flagged_clicks = sum(r["clicks"] for r in flagged)
    flagged_users = sum(r["users"] for r in flagged)

    print()
    print(f"== Summary (last {days} days) ==")
    print(f"  Total ad_clicked events:       {total_clicks}")
    print(f"  Total clicking users:          {total_users}")
    if total_users:
        print(
            f"  Avg clicks per clicking user:  {total_clicks/total_users:.2f}"
        )
    print(f"  Suspicious clusters (≥{threshold} clicks & ≥2 c/u): {len(flagged)}")
    if flagged:
        print(
            f"  Clicks from those clusters:    {flagged_clicks} "
            f"({100*flagged_clicks/max(total_clicks,1):.1f}% of total)"
        )
        print(f"  Users behind those clusters:   {flagged_users}")
        # Country concentration
        by_country: dict[str, int] = {}
        for r in flagged:
            by_country[r["country"]] = (
                by_country.get(r["country"], 0) + r["clicks"]
            )
        top = sorted(by_country.items(), key=lambda x: -x[1])[:5]
        print("  Flagged clicks by country:")
        for c, n in top:
            print(f"    {c:<25} {n}")


def write_csv(rows: list[dict], path: Path) -> None:
    with path.open("w", newline="") as f:
        w = csv.DictWriter(
            f,
            fieldnames=[
                "clicks",
                "users",
                "cpu",
                "country",
                "city",
                "device",
                "os",
                "os_ver",
                "first_seen",
            ],
        )
        w.writeheader()
        for r in rows:
            w.writerow({**r, "cpu": f"{r['cpu']:.2f}"})
    print(f"\nCSV written: {path}")


def main() -> int:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--days", type=int, default=7)
    p.add_argument("--threshold", type=int, default=3)
    p.add_argument("--limit", type=int, default=100)
    p.add_argument("--csv", type=Path)
    args = p.parse_args()

    if not CREDS_PATH.exists():
        print(f"Missing service account key at {CREDS_PATH}", file=sys.stderr)
        return 1

    print(
        f"Querying GA4 property {PROPERTY_ID} for ad_clicked clusters "
        f"over last {args.days} days..."
    )
    rows = query(args.days, args.limit)
    render(rows, args.threshold)
    summary(rows, args.threshold, args.days)
    if args.csv:
        write_csv(rows, args.csv)
    return 0


if __name__ == "__main__":
    sys.exit(main())
