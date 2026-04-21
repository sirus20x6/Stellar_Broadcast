#!/usr/bin/env python3
"""App Store Connect — fill in premium_lifetime IAP metadata and submit for review."""
import json
import os
import sys
import time
from pathlib import Path

import jwt
import requests

ROOT = Path(__file__).resolve().parent.parent
KEY_ID = "V9W2YFHZKH"
ISSUER_ID = "8753b872-55ac-4345-a6c6-290fe375e243"
KEY_PATH = ROOT / "ios/certs/AuthKey_V9W2YFHZKH.p8"
APP_ID = "6762326290"
PRODUCT_ID = "premium_lifetime"
BASE = "https://api.appstoreconnect.apple.com"

DISPLAY_NAME = "Premium"
DESCRIPTION = "Remove all ads forever and support development."
TARGET_USD = 2.99
LOCALE = "en-US"
SCREENSHOT = ROOT / "ios/screenshots/landing_6.7.png"


def token():
    key = KEY_PATH.read_text()
    now = int(time.time())
    payload = {"iss": ISSUER_ID, "iat": now, "exp": now + 19 * 60, "aud": "appstoreconnect-v1"}
    return jwt.encode(payload, key, algorithm="ES256", headers={"kid": KEY_ID, "typ": "JWT"})


def hdr(t):
    return {"Authorization": f"Bearer {t}", "Content-Type": "application/json"}


def pp(obj):
    print(json.dumps(obj, indent=2)[:2000])


def req(method, path, tok, **kw):
    url = path if path.startswith("http") else BASE + path
    r = requests.request(method, url, headers=hdr(tok), **kw)
    if not r.ok:
        print(f"\n!! {method} {path} -> {r.status_code}")
        print(r.text[:2000])
        r.raise_for_status()
    return r.json() if r.text else {}


def find_iap(tok):
    url = f"/v1/apps/{APP_ID}/inAppPurchasesV2?limit=200"
    while url:
        data = req("GET", url, tok)
        for item in data.get("data", []):
            if item["attributes"]["productId"] == PRODUCT_ID:
                return item["id"]
        url = data.get("links", {}).get("next")
    raise SystemExit(f"IAP {PRODUCT_ID} not found under app {APP_ID}")


def inspect(tok, iap_id):
    print("\n== IAP detail ==")
    d = req("GET", f"/v2/inAppPurchases/{iap_id}?include=inAppPurchaseLocalizations,pricePoints,appStoreReviewScreenshot", tok)
    pp(d.get("data", {}).get("attributes", {}))
    print("State:", d["data"]["attributes"].get("state"))
    return d


def pick_price_point(tok, iap_id):
    # Page through USA price points, pick the one closest to TARGET_USD
    print("\n== Fetching USA price points ==")
    url = f"/v2/inAppPurchases/{iap_id}/pricePoints?filter[territory]=USA&limit=200"
    best = None
    best_diff = 1e9
    while url:
        d = req("GET", url, tok)
        for pt in d.get("data", []):
            cp = float(pt["attributes"]["customerPrice"])
            diff = abs(cp - TARGET_USD)
            if diff < best_diff:
                best_diff = diff
                best = pt
        url = d.get("links", {}).get("next")
    if not best:
        raise SystemExit("No USA price points found")
    print(f"Closest to ${TARGET_USD}: ${best['attributes']['customerPrice']} id={best['id']}")
    return best["id"]


def set_price(tok, iap_id, price_point_id):
    print("\n== Setting price schedule ==")
    body = {
        "data": {
            "type": "inAppPurchasePriceSchedules",
            "relationships": {
                "inAppPurchase": {"data": {"type": "inAppPurchases", "id": iap_id}},
                "baseTerritory": {"data": {"type": "territories", "id": "USA"}},
                "manualPrices": {"data": [{"type": "inAppPurchasePrices", "id": "${price-1}"}]},
            },
        },
        "included": [
            {
                "type": "inAppPurchasePrices",
                "id": "${price-1}",
                "attributes": {"startDate": None},
                "relationships": {
                    "inAppPurchaseV2": {"data": {"type": "inAppPurchases", "id": iap_id}},
                    "inAppPurchasePricePoint": {"data": {"type": "inAppPurchasePricePoints", "id": price_point_id}},
                },
            }
        ],
    }
    d = req("POST", "/v1/inAppPurchasePriceSchedules", tok, data=json.dumps(body))
    print("price schedule id:", d["data"]["id"])


def add_localization(tok, iap_id):
    print(f"\n== Adding {LOCALE} localization ==")
    body = {
        "data": {
            "type": "inAppPurchaseLocalizations",
            "attributes": {"name": DISPLAY_NAME, "locale": LOCALE, "description": DESCRIPTION},
            "relationships": {"inAppPurchaseV2": {"data": {"type": "inAppPurchases", "id": iap_id}}},
        }
    }
    try:
        d = req("POST", "/v1/inAppPurchaseLocalizations", tok, data=json.dumps(body))
        print("localization id:", d["data"]["id"])
    except requests.HTTPError as e:
        if "already exists" in str(e.response.text).lower() or e.response.status_code == 409:
            print("localization already exists, skipping")
        else:
            raise


def upload_screenshot(tok, iap_id):
    print(f"\n== Uploading review screenshot: {SCREENSHOT.name} ==")
    data = SCREENSHOT.read_bytes()
    size = len(data)
    # 1. Create reservation
    body = {
        "data": {
            "type": "inAppPurchaseAppStoreReviewScreenshots",
            "attributes": {"fileName": SCREENSHOT.name, "fileSize": size},
            "relationships": {"inAppPurchaseV2": {"data": {"type": "inAppPurchases", "id": iap_id}}},
        }
    }
    d = req("POST", "/v1/inAppPurchaseAppStoreReviewScreenshots", tok, data=json.dumps(body))
    shot_id = d["data"]["id"]
    ops = d["data"]["attributes"]["uploadOperations"]
    # 2. PUT to signed URL(s)
    for op in ops:
        headers = {h["name"]: h["value"] for h in op["requestHeaders"]}
        chunk = data[op["offset"]:op["offset"] + op["length"]]
        r = requests.request(op["method"], op["url"], headers=headers, data=chunk)
        r.raise_for_status()
    # 3. Commit
    import hashlib
    md5 = hashlib.md5(data).hexdigest()
    commit = {
        "data": {
            "type": "inAppPurchaseAppStoreReviewScreenshots",
            "id": shot_id,
            "attributes": {"uploaded": True, "sourceFileChecksum": md5},
        }
    }
    req("PATCH", f"/v1/inAppPurchaseAppStoreReviewScreenshots/{shot_id}", tok, data=json.dumps(commit))
    print("screenshot uploaded:", shot_id)


def submit_for_review(tok, iap_id):
    print("\n== Submitting for review ==")
    body = {
        "data": {
            "type": "inAppPurchaseSubmissions",
            "relationships": {"inAppPurchaseV2": {"data": {"type": "inAppPurchases", "id": iap_id}}},
        }
    }
    d = req("POST", "/v1/inAppPurchaseSubmissions", tok, data=json.dumps(body))
    print("submission id:", d["data"]["id"])


def main():
    cmd = sys.argv[1] if len(sys.argv) > 1 else "all"
    tok = token()
    iap_id = find_iap(tok)
    print(f"IAP {PRODUCT_ID} -> {iap_id}")

    if cmd == "inspect":
        inspect(tok, iap_id)
        return
    if cmd in ("all", "price"):
        pp_id = pick_price_point(tok, iap_id)
        try:
            set_price(tok, iap_id, pp_id)
        except requests.HTTPError as e:
            if e.response.status_code in (409, 400) and "already" in e.response.text.lower():
                print("price schedule already exists, skipping")
            else:
                raise
    if cmd in ("all", "loc"):
        add_localization(tok, iap_id)
    if cmd in ("all", "shot"):
        upload_screenshot(tok, iap_id)
    if cmd in ("all", "submit"):
        inspect(tok, iap_id)
        ans = input("\nProceed with Submit for Review? [y/N] ").strip().lower()
        if ans == "y":
            submit_for_review(tok, iap_id)
        else:
            print("skipped submission")


if __name__ == "__main__":
    main()
