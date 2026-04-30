import 'package:flutter/material.dart';
import 'package:quickapps_analytics/quickapps_analytics.dart';
import 'package:quickapps_logging/quickapps_logging.dart';

/// App-specific route labels for screen coverage tracking.
const Map<String, String> screenRouteLabels = {
  '/': 'Title',
  '/voyage': 'Voyage',
  '/_home': 'Voyage',
  '/scan': 'Scan',
  '/landing': 'Landing',
  '/landing-sequence': 'Land Seq',
  '/ending': 'Ending',
  '/legacy': 'Legacy',
  '/codex': 'Codex',
  '/settings': 'Settings',
  '/gameover': 'Game Over',
  '/trader': 'Trader',
  '/ship-status': 'Ship Status',
  '/event': 'Event',
  '/puzzle': 'Puzzle',
  '/black-hole': 'Black Hole',
  '/living-nebula': 'Nebula',
  '/seed-vault': 'Seed Vault',
  '/dyson-sphere': 'Dyson Sphere',
  '/world-engine': 'World Engine',
  '/mirror-array': 'Mirror Array',
  '/chrono-vortex': 'Chrono Vortex',
  '/void-whale': 'Void Whale',
  '/phantom-ship': 'Phantom Ship',
  '/singularity-engine': 'Singularity Engine',
  '/pulsar-lighthouse': 'Pulsar Lighthouse',
  '/earth-goodbye': 'Earth Goodbye',
};

final screenCoverageService = ScreenCoverageService.init(screenRouteLabels);

/// Root navigator observer. Use for title/settings/codex/legacy/end screens.
final rootRouteObserver = RouteObserver<ModalRoute<void>>();

/// Inner gameplay navigator observer. Use for voyage/scan/event/puzzle screens.
final voyageRouteObserver = RouteObserver<ModalRoute<void>>();

List<NavigatorObserver> buildNavigatorObservers(
  RouteObserver<ModalRoute<void>> routeObserver,
) {
  return [
    routeObserver,
    QaAnalyticsObserver(),
    ScreenCoverageObserver(screenCoverageService),
  ];
}
