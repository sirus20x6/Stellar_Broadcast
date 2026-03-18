# Starbound Exodus — Implementation Plan

## 1. App ID & Theme

| Field         | Value                                           |
|---------------|-------------------------------------------------|
| Package name  | `com.quickapps.starboundexodus`                 |
| App name      | Starbound Exodus                                |
| Display name  | Starbound Exodus                                |
| Seed color    | Deep space blue (`#0B1426`)                     |
| Accent color  | Cyan holographic (`#00E5FF`)                    |
| Path          | `apps/starbound_exodus/`                        |
| Min Android   | SDK 21                                          |
| Min iOS       | 13                                              |

You are an AI guiding humanity's last colony ship across the galaxy. Land on the best planet you can find, or press on into the unknown.

## 2. Navigation

Stack-based navigation (no bottom nav). The game is linear: title > voyage > ending > meta screens.

| Route               | Description                                                          |
|---------------------|----------------------------------------------------------------------|
| `/`                 | Title Screen — parallax star field, ship silhouette, start button    |
| `/voyage`           | Voyage Screen — ship dashboard HUD, planet encounters, events        |
| `/scan`             | Planet Scan — procedural planet reveal with scan line animation      |
| `/event`            | Event Screen — narrative event with choices                          |
| `/landing`          | Landing Decision — accept this planet or press on                    |
| `/ending`           | Ending Screen — narrative epilogue based on final stats              |
| `/legacy`           | Legacy Hub — upgrades, achievements, captain's log                   |

## 3. Development Lifecycle

### 3.1 Research Phase
- **Procedural Generation Audit:** Validate the planet generation algorithm to ensure "Utopia" endings are statistically possible but rare.
- **Narrative Strategy:** Develop a set of 50+ branching events to ensure variety across multiple runs.
- **Visual Performance:** Stress test `CustomPainter` with complex star fields and planet surface noise.

### 3.2 Strategy Phase
- **Architecture:** Use a `VoyageManager` to coordinate ship stats, planet generation, and event state.
- **UI Design:** Focus on holographic, "tech-heavy" aesthetics with high-contrast cyan elements.
- **Verification Plan:** Unit tests for scoring weights and ending tier logic; manual playtesting for narrative flow.

### 3.3 Execution Phase
- **Sprints:**
  1. Title screen and parallax star field.
  2. Ship stats, Planet generation, and Scanning system.
  3. Narrative event engine and Initial event pool.
  4. Landing logic and Ending epilogue generation.
  5. Legacy hub, Upgrades, and IAP integration.

## 4. Core Features

### 4.1 Ship Systems
Six systems (Hull, Scanner, Nav, Cryopods, Culture, Tech) that degrade over time. Final landing stats determine the colony's fate.

### 4.2 Planet Generation
Procedurally generated worlds with seven stats (Atmosphere, Temp, Water, Resources, Gravity, Biodiversity, Anomaly).

### 4.3 Narrative Events
50+ events with multiple choices that impact ship systems and planet stats.

## 5. Monetization & Premium Strategy

### 5.1 Free Tier (Ad-Supported)
- Banner ads on Title and Legacy Hub.
- Interstitial ads on voyage completion.
- Rewarded ads for "Emergency Reserve" (+15% to lowest system).

### 5.2 Premium Strategy ($2.99/mo or $5.99 Lifetime)
- **Remove All Ads.**
- **Legacy Booster (Permanent 2x Legacy points).**
- **Advanced Star Charts (+1 default planet encounter per voyage).**
- **Supporter Icon & Glow on the Dashboard.**

## 6. Onboarding
3 pages highlighting: Humanity's Last Hope, Seek a New Home, and Your Legacy Endures.
