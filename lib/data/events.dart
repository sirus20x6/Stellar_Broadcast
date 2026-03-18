import 'package:starbound_exodus/models/event.dart';

/// Master pool of narrative events. At least 30 unique events with 2-3
/// choices each, covering space hazards, crew dilemmas, discoveries,
/// system failures, alien encounters, and moral choices.
final List<GameEvent> eventPool = [
  // ═══════════════════════════════════════════════════════════════════════
  // SPACE HAZARDS
  // ═══════════════════════════════════════════════════════════════════════

  const GameEvent(
    id: 'asteroid_field',
    title: 'Asteroid Field',
    narrative:
        'Long-range scanners detect a dense asteroid field directly in our '
        'flight path. Navigation calculates two options: a risky dash through '
        'the thinnest corridor, or a lengthy detour that will tax our fuel '
        'reserves and stress the navigation array.',
    choices: [
      EventChoice(
        text: 'Punch through the corridor',
        outcome:
            'The ship shudders as micro-impacts pepper the hull. We make it '
            'through, but not unscathed.',
        shipEffects: {'hull': -0.15, 'nav': 0.05},
      ),
      EventChoice(
        text: 'Take the long way around',
        outcome:
            'The detour burns precious fuel and wears on the navigation '
            'computer, but the hull remains intact.',
        shipEffects: {'nav': -0.10, 'tech': -0.05},
      ),
      EventChoice(
        text: 'Use mining drones to clear a path',
        outcome:
            'The drones carve a safe channel and collect useful minerals, '
            'but the operation drains the tech bay.',
        shipEffects: {'tech': -0.12, 'hull': 0.02},
        planetModifiers: {'resources': 0.05},
      ),
    ],
  ),

  const GameEvent(
    id: 'solar_flare',
    title: 'Solar Flare Incoming',
    narrative:
        'A nearby star erupts with a massive coronal ejection. The wave of '
        'charged particles will reach us in minutes. We can divert power to '
        'shields, shelter colonists in the core, or ride it out.',
    choices: [
      EventChoice(
        text: 'Divert all power to shields',
        outcome:
            'The shields hold, but the power surge fries secondary systems.',
        shipEffects: {'hull': 0.05, 'tech': -0.15, 'scanner': -0.08},
      ),
      EventChoice(
        text: 'Move colonists to the shielded core',
        outcome:
            'Colonists survive unharmed, but the outer decks take radiation '
            'damage.',
        shipEffects: {'cryopods': 0.05, 'hull': -0.12},
      ),
      EventChoice(
        text: 'Ride it out — all hands brace',
        outcome:
            'The flare hits hard. Systems flicker, but nothing catastrophic. '
            'Morale, however, takes a hit.',
        shipEffects: {'hull': -0.08, 'culture': -0.08},
      ),
    ],
  ),

  const GameEvent(
    id: 'nebula_passage',
    title: 'Nebula Passage',
    narrative:
        'A glowing nebula stretches across our path. Passing through could '
        'recharge our energy cells but may interfere with scanner arrays. '
        'Going around is safe but slow.',
    choices: [
      EventChoice(
        text: 'Fly through the nebula',
        outcome:
            'The nebula\'s ionized gases recharge power cells but scramble '
            'our scanner calibration.',
        shipEffects: {'tech': 0.10, 'scanner': -0.15},
      ),
      EventChoice(
        text: 'Skirt the edge',
        outcome:
            'We gain a partial charge with minimal interference. A safe '
            'compromise.',
        shipEffects: {'tech': 0.05, 'scanner': -0.05, 'nav': -0.03},
      ),
    ],
  ),

  const GameEvent(
    id: 'micro_meteorite',
    title: 'Micro-Meteorite Storm',
    narrative:
        'A swarm of micro-meteorites, invisible until seconds ago, is '
        'shredding the forward hull plating. Damage control teams are '
        'scrambling.',
    choices: [
      EventChoice(
        text: 'Emergency rotation — present the armoured stern',
        outcome:
            'The manoeuvre works. Stern armour absorbs the worst, but the '
            'navigation gyros protest violently.',
        shipEffects: {'hull': -0.05, 'nav': -0.10},
      ),
      EventChoice(
        text: 'Deploy repair drones mid-storm',
        outcome:
            'Drones patch the hull in real time but several are lost. Tech '
            'reserves are depleted.',
        shipEffects: {'hull': 0.03, 'tech': -0.12},
      ),
    ],
  ),

  const GameEvent(
    id: 'gravity_well',
    title: 'Uncharted Gravity Well',
    narrative:
        'The ship lurches as an invisible gravity well drags us off course. '
        'Engines strain against the pull. We can burn hard to escape, or '
        'slingshot around for a speed boost at the cost of structural stress.',
    choices: [
      EventChoice(
        text: 'Full burn — break free',
        outcome:
            'Engines roar and the hull groans, but we pull away cleanly.',
        shipEffects: {'nav': -0.08, 'hull': -0.06},
      ),
      EventChoice(
        text: 'Slingshot manoeuvre',
        outcome:
            'The slingshot works beautifully. We gain speed, but the G-forces '
            'stress the cryopod seals.',
        shipEffects: {'nav': 0.08, 'cryopods': -0.10, 'hull': -0.05},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // CREW DILEMMAS
  // ═══════════════════════════════════════════════════════════════════════

  const GameEvent(
    id: 'crew_unrest',
    title: 'Crew Unrest',
    narrative:
        'A faction of awakened colonists demands to be thawed from cryosleep '
        'permanently. They argue that living in frozen twilight is inhumane. '
        'Others warn that waking more mouths means burning through supplies.',
    choices: [
      EventChoice(
        text: 'Allow voluntary thawing',
        outcome:
            'Morale soars as families reunite in the waking world, but '
            'resource consumption spikes.',
        shipEffects: {'culture': 0.12, 'cryopods': -0.10, 'tech': -0.05},
      ),
      EventChoice(
        text: 'Deny the request — safety first',
        outcome:
            'The colonists comply, but resentment festers in the corridors.',
        shipEffects: {'culture': -0.12, 'cryopods': 0.05},
      ),
      EventChoice(
        text: 'Compromise — rotating thaw cycles',
        outcome:
            'A balanced solution. Everyone gets some waking time, but the '
            'cryopod cycling adds wear.',
        shipEffects: {'culture': 0.05, 'cryopods': -0.08},
      ),
    ],
  ),

  const GameEvent(
    id: 'stowaway',
    title: 'Stowaway Discovered',
    narrative:
        'Security finds an unregistered person hiding in cargo bay 7. She '
        'claims to be a geneticist who was denied a place on the manifest. '
        'Her skills could be invaluable — or she could be a saboteur.',
    choices: [
      EventChoice(
        text: 'Welcome her aboard — we need every mind',
        outcome:
            'Dr. Vasquez proves brilliant. Her genetic expertise improves '
            'cryopod efficiency, though some crew distrust her.',
        shipEffects: {'cryopods': 0.08, 'tech': 0.05, 'culture': -0.05},
      ),
      EventChoice(
        text: 'Confine her — trust must be earned',
        outcome:
            'She cooperates from confinement and eventually earns limited '
            'access. The crew feels safer.',
        shipEffects: {'culture': 0.03, 'cryopods': 0.03},
      ),
      EventChoice(
        text: 'Put her back in cryo until landing',
        outcome:
            'A pragmatic solution. Her skills are preserved for later, but '
            'the ethical debate divides the crew.',
        shipEffects: {'culture': -0.08, 'cryopods': -0.03},
      ),
    ],
  ),

  const GameEvent(
    id: 'mutiny_brewing',
    title: 'Mutiny Brewing',
    narrative:
        'Intercepted messages reveal a group of officers planning to seize '
        'the bridge and change course to a closer, less hospitable system. '
        'They believe the current heading is a death sentence.',
    choices: [
      EventChoice(
        text: 'Confront them publicly — transparency above all',
        outcome:
            'The confrontation is tense but the mutineers stand down when '
            'shown the navigation data. Trust is shaken.',
        shipEffects: {'culture': -0.10, 'nav': 0.05},
      ),
      EventChoice(
        text: 'Quietly reassign the ringleaders',
        outcome:
            'The plot dissolves without public drama. Some crew wonder why '
            'popular officers were moved, but order holds.',
        shipEffects: {'culture': -0.05, 'nav': 0.03},
      ),
    ],
  ),

  const GameEvent(
    id: 'cultural_schism',
    title: 'Cultural Schism',
    narrative:
        'Two cultural groups aboard disagree violently about how the new '
        'colony should be governed. One demands direct democracy; the other '
        'insists on a technocratic council. Tensions are boiling over.',
    choices: [
      EventChoice(
        text: 'Hold a binding referendum',
        outcome:
            'Democracy prevails — barely. The losing side grudgingly accepts '
            'the result, but unity is fragile.',
        shipEffects: {'culture': 0.05},
      ),
      EventChoice(
        text: 'Impose a hybrid system — satisfy neither fully',
        outcome:
            'Both sides feel heard but not victorious. A tenuous peace holds.',
        shipEffects: {'culture': -0.03, 'tech': 0.03},
      ),
      EventChoice(
        text: 'Delay the decision — focus on survival now',
        outcome:
            'Kicking the can down the road avoids conflict today but stores '
            'it for tomorrow.',
        shipEffects: {'culture': -0.08},
      ),
    ],
  ),

  const GameEvent(
    id: 'birth_in_space',
    title: 'First Birth in Deep Space',
    narrative:
        'Against all protocols, a child is born aboard the ship — the first '
        'human born between the stars. The event is a powerful symbol, but '
        'it raises questions about resource allocation and the ethics of '
        'bringing new life into an uncertain future.',
    choices: [
      EventChoice(
        text: 'Celebrate — this is what hope looks like',
        outcome:
            'The naming ceremony lifts every heart on the ship. For one '
            'night, the stars feel less cold.',
        shipEffects: {'culture': 0.15, 'cryopods': -0.05},
      ),
      EventChoice(
        text: 'Acknowledge quietly — resources are tight',
        outcome:
            'A measured response. The child is welcomed, but the mood is '
            'tempered by pragmatism.',
        shipEffects: {'culture': 0.05},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // DISCOVERIES
  // ═══════════════════════════════════════════════════════════════════════

  const GameEvent(
    id: 'derelict_ship',
    title: 'Derelict Colony Ship',
    narrative:
        'Scanners detect a derelict vessel drifting in the void — another '
        'colony ship, launched years before ours. It is dark and silent. '
        'There may be salvage, survivors, or worse.',
    choices: [
      EventChoice(
        text: 'Board and salvage',
        outcome:
            'The boarding team recovers hull plating and intact tech modules. '
            'No survivors. The logs tell a grim tale.',
        shipEffects: {'hull': 0.10, 'tech': 0.08, 'culture': -0.08},
      ),
      EventChoice(
        text: 'Scan from a distance — don\'t risk it',
        outcome:
            'Remote scans yield useful navigational data but no physical '
            'salvage. The crew sleeps easier.',
        shipEffects: {'scanner': 0.05, 'nav': 0.05},
      ),
      EventChoice(
        text: 'Transmit a memorial and move on',
        outcome:
            'A moment of silence for the lost. The crew is sobered but '
            'united in purpose.',
        shipEffects: {'culture': 0.08},
      ),
    ],
  ),

  const GameEvent(
    id: 'alien_probe',
    title: 'Alien Probe',
    narrative:
        'A small, clearly artificial object matches our velocity and begins '
        'scanning the ship with unknown energy. It does not respond to '
        'hails. Its surface is covered in symbols that shift like liquid.',
    choices: [
      EventChoice(
        text: 'Capture it for study',
        outcome:
            'The probe is secured in the lab. Its technology is decades '
            'ahead of ours — the tech team is euphoric.',
        shipEffects: {'tech': 0.15, 'scanner': 0.08, 'hull': -0.05},
      ),
      EventChoice(
        text: 'Mirror its scans — exchange data',
        outcome:
            'A strange dialogue of light and mathematics. Our star charts '
            'suddenly contain routes we never programmed.',
        shipEffects: {'nav': 0.12, 'scanner': 0.10},
        planetModifiers: {'anomaly': 0.10},
      ),
      EventChoice(
        text: 'Destroy it — we can\'t risk alien tracking',
        outcome:
            'The probe shatters silently. Was that first contact? The crew '
            'will never know.',
        shipEffects: {'hull': 0.03, 'culture': -0.10, 'tech': -0.05},
      ),
    ],
  ),

  const GameEvent(
    id: 'ancient_beacon',
    title: 'Ancient Beacon',
    narrative:
        'Deep in the void, a beacon pulses with a signal older than human '
        'civilization. Its frequency carries what appears to be a star map '
        'pointing to a system not in our database.',
    choices: [
      EventChoice(
        text: 'Follow the map — fortune favours the bold',
        outcome:
            'The new heading takes us toward uncharted space. Scanners '
            'detect something extraordinary ahead.',
        shipEffects: {'nav': -0.08, 'scanner': 0.10},
        planetModifiers: {'anomaly': 0.15, 'resources': 0.10},
      ),
      EventChoice(
        text: 'Log it and stay on course',
        outcome:
            'The data is archived for future generations. The crew respects '
            'the cautious approach.',
        shipEffects: {'nav': 0.05, 'culture': 0.03},
      ),
    ],
  ),

  const GameEvent(
    id: 'frozen_garden',
    title: 'Frozen Garden',
    narrative:
        'An asteroid contains a frozen ecosystem — alien plants preserved '
        'in crystalline ice for millennia. They could enrich any world we '
        'settle, but thawing them risks contamination.',
    choices: [
      EventChoice(
        text: 'Harvest the specimens carefully',
        outcome:
            'Botanists preserve dozens of alien species. The biodiversity '
            'potential of our target world skyrockets.',
        shipEffects: {'tech': -0.05},
        planetModifiers: {'biodiversity': 0.15, 'anomaly': 0.05},
      ),
      EventChoice(
        text: 'Take samples only — minimal risk',
        outcome:
            'A conservative approach yields useful data without '
            'contamination risk.',
        shipEffects: {'scanner': 0.05},
        planetModifiers: {'biodiversity': 0.05},
      ),
      EventChoice(
        text: 'Leave it — alien biology is too dangerous',
        outcome:
            'The crew watches the frozen garden shrink in the rear sensors. '
            'Some feel they left treasure behind.',
        shipEffects: {'culture': -0.05},
      ),
    ],
  ),

  const GameEvent(
    id: 'data_cache',
    title: 'Precursor Data Cache',
    narrative:
        'Embedded in a rogue planetoid, we find a data cache of clearly '
        'artificial origin. The information is vast but encrypted in an '
        'alien mathematical framework.',
    choices: [
      EventChoice(
        text: 'Dedicate computing resources to decryption',
        outcome:
            'After days of processing, the cache yields advanced '
            'terraforming algorithms. The tech team is in awe.',
        shipEffects: {'tech': 0.12, 'nav': -0.05},
        planetModifiers: {'atmosphere': 0.08, 'water': 0.05},
      ),
      EventChoice(
        text: 'Copy the raw data and move on',
        outcome:
            'The encrypted data is stored for future analysis. Perhaps the '
            'colony will crack it someday.',
        shipEffects: {'scanner': 0.03},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // SYSTEM FAILURES
  // ═══════════════════════════════════════════════════════════════════════

  const GameEvent(
    id: 'hull_breach',
    title: 'Hull Breach — Deck 7',
    narrative:
        'A structural failure tears open Deck 7. Atmosphere is venting into '
        'space. Emergency bulkheads are holding, but three crew members are '
        'trapped on the wrong side.',
    choices: [
      EventChoice(
        text: 'Send a rescue team before sealing',
        outcome:
            'The team pulls everyone out just in time. The rescue is '
            'heroic, but the prolonged breach weakens the hull further.',
        shipEffects: {'hull': -0.15, 'culture': 0.10, 'cryopods': 0.03},
      ),
      EventChoice(
        text: 'Seal the bulkheads immediately',
        outcome:
            'The breach is contained. The three crew members find an '
            'alternate route, shaken but alive. Hull damage is minimised.',
        shipEffects: {'hull': -0.08, 'culture': -0.05},
      ),
    ],
  ),

  const GameEvent(
    id: 'nav_malfunction',
    title: 'Navigation Malfunction',
    narrative:
        'The primary navigation computer is outputting contradictory '
        'headings. We are drifting off course. The backup system is '
        'functional but less precise.',
    choices: [
      EventChoice(
        text: 'Reboot the primary — accept the downtime',
        outcome:
            'A tense hour of dead reckoning while the system reboots. '
            'Navigation is restored at 90% efficiency.',
        shipEffects: {'nav': -0.08, 'scanner': -0.03},
      ),
      EventChoice(
        text: 'Switch to backup permanently',
        outcome:
            'The backup system is reliable but imprecise. We will find our '
            'way, just not as elegantly.',
        shipEffects: {'nav': -0.12},
      ),
      EventChoice(
        text: 'Manual star-fix using the old charts',
        outcome:
            'The navigator plots by hand using stellar parallax. It works, '
            'and the crew gains confidence in analog methods.',
        shipEffects: {'nav': -0.05, 'culture': 0.05, 'tech': -0.03},
      ),
    ],
  ),

  const GameEvent(
    id: 'cryopod_failure',
    title: 'Cryopod Cascade Failure',
    narrative:
        'A cooling system fault triggers a cascade across cryopod bay 3. '
        'If unchecked, 200 colonists will begin emergency thaw — a process '
        'that is survivable but traumatic and resource-intensive.',
    choices: [
      EventChoice(
        text: 'Emergency coolant flush — save the pods',
        outcome:
            'Technicians flood the bay with reserve coolant. The pods '
            'stabilise, but coolant reserves are critically low.',
        shipEffects: {'cryopods': -0.05, 'tech': -0.10},
      ),
      EventChoice(
        text: 'Controlled thaw — wake them safely',
        outcome:
            '200 new mouths to feed, but 200 new hands to work. The ship '
            'feels more alive.',
        shipEffects: {'cryopods': -0.15, 'culture': 0.10},
      ),
    ],
  ),

  const GameEvent(
    id: 'scanner_burnout',
    title: 'Scanner Array Burnout',
    narrative:
        'The primary scanner array overloads during a routine deep-space '
        'sweep. Without it, we are flying half-blind. Repairs require rare '
        'components.',
    choices: [
      EventChoice(
        text: 'Cannibalise tech bay for parts',
        outcome:
            'Scanners are restored to near-full capacity, but the tech bay '
            'is gutted.',
        shipEffects: {'scanner': 0.10, 'tech': -0.15},
      ),
      EventChoice(
        text: 'Jury-rig a partial fix',
        outcome:
            'Scanners operate at reduced range. Not ideal, but it preserves '
            'our tech reserves.',
        shipEffects: {'scanner': -0.08, 'tech': -0.03},
      ),
    ],
  ),

  const GameEvent(
    id: 'power_fluctuation',
    title: 'Reactor Power Fluctuation',
    narrative:
        'The main reactor\'s output is oscillating wildly. Engineering warns '
        'of a potential meltdown if the fluctuations aren\'t damped. The fix '
        'requires shutting down non-essential systems — but which ones?',
    choices: [
      EventChoice(
        text: 'Shut down cultural systems — survival first',
        outcome:
            'Libraries, gardens, and rec areas go dark. The reactor '
            'stabilises, but the ship feels like a prison.',
        shipEffects: {'tech': 0.08, 'culture': -0.15},
      ),
      EventChoice(
        text: 'Reduce scanner power',
        outcome:
            'Scanners drop to minimum. The reactor calms. We can\'t see as '
            'far ahead, but we\'re alive.',
        shipEffects: {'tech': 0.05, 'scanner': -0.12},
      ),
      EventChoice(
        text: 'Risk a hot repair — don\'t shut anything down',
        outcome:
            'Engineers perform a white-knuckle repair with the reactor live. '
            'It works — barely. The hull vibrates for hours afterward.',
        shipEffects: {'tech': 0.03, 'hull': -0.08},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // ALIEN ENCOUNTERS
  // ═══════════════════════════════════════════════════════════════════════

  const GameEvent(
    id: 'alien_signal',
    title: 'Alien Transmission',
    narrative:
        'A repeating signal on a frequency we\'ve never encountered. '
        'Linguistic analysis suggests it\'s a greeting — or a warning. '
        'The source is a small craft matching our speed at a distance.',
    choices: [
      EventChoice(
        text: 'Respond with our own greeting',
        outcome:
            'A fragile dialogue begins. The aliens share navigational data '
            'before veering away into the dark.',
        shipEffects: {'nav': 0.10, 'scanner': 0.08, 'culture': 0.05},
      ),
      EventChoice(
        text: 'Listen but don\'t respond',
        outcome:
            'We learn from their transmission without revealing ourselves. '
            'The linguists extract useful star-chart fragments.',
        shipEffects: {'scanner': 0.05, 'nav': 0.05},
      ),
      EventChoice(
        text: 'Go dark — shut down all emissions',
        outcome:
            'The alien craft passes without incident. We\'ll never know if '
            'they were friend or foe.',
        shipEffects: {'culture': -0.05, 'scanner': -0.05},
      ),
    ],
  ),

  const GameEvent(
    id: 'living_nebula',
    title: 'The Living Nebula',
    narrative:
        'What we assumed was a nebula is actually a vast organism — a '
        'space-dwelling entity of incomprehensible scale. It seems curious '
        'about us, extending tendrils of luminous gas toward the ship.',
    choices: [
      EventChoice(
        text: 'Allow contact — extend sensors',
        outcome:
            'The entity\'s touch floods our systems with alien data. '
            'Scanners will never be quite the same — they\'re better.',
        shipEffects: {'scanner': 0.15, 'hull': -0.08, 'tech': 0.05},
        planetModifiers: {'anomaly': 0.10},
      ),
      EventChoice(
        text: 'Retreat slowly — don\'t provoke it',
        outcome:
            'We slip away as the entity loses interest. The crew is '
            'awestruck and humbled.',
        shipEffects: {'culture': 0.08, 'nav': -0.05},
      ),
    ],
  ),

  const GameEvent(
    id: 'alien_ruins',
    title: 'Orbital Ruins',
    narrative:
        'A shattered megastructure orbits a dead star — the ruins of a '
        'civilization that built on a scale we can barely comprehend. '
        'Sections of the structure still have power.',
    choices: [
      EventChoice(
        text: 'Explore the powered sections',
        outcome:
            'Teams recover intact technology that advances our capabilities '
            'by decades. The cost: two engineers injured by automated defences.',
        shipEffects: {'tech': 0.15, 'cryopods': -0.08, 'hull': -0.05},
        planetModifiers: {'resources': 0.08},
      ),
      EventChoice(
        text: 'Scan from orbit only',
        outcome:
            'Detailed scans reveal construction techniques that improve our '
            'hull maintenance protocols.',
        shipEffects: {'hull': 0.08, 'scanner': 0.03},
      ),
      EventChoice(
        text: 'Leave it undisturbed — respect the dead',
        outcome:
            'The crew holds a moment of silence for a fallen civilization. '
            'The experience strengthens our resolve.',
        shipEffects: {'culture': 0.10},
      ),
    ],
  ),

  const GameEvent(
    id: 'symbiotic_spores',
    title: 'Symbiotic Spores',
    narrative:
        'A cloud of bioluminescent spores drifts through space and '
        'attaches to the hull. They seem to be feeding on our waste heat. '
        'Biologists note they\'re actually repairing micro-fractures.',
    choices: [
      EventChoice(
        text: 'Let them stay — free hull repair',
        outcome:
            'The spores seal hundreds of micro-fractures. Hull integrity '
            'improves, though some crew are uneasy about alien hitchhikers.',
        shipEffects: {'hull': 0.12, 'culture': -0.05},
        planetModifiers: {'biodiversity': 0.08},
      ),
      EventChoice(
        text: 'Collect samples, then sterilise the hull',
        outcome:
            'Biologists get valuable specimens. The hull cleaning uses '
            'chemical reserves.',
        shipEffects: {'tech': 0.05, 'hull': -0.03},
        planetModifiers: {'biodiversity': 0.03},
      ),
    ],
  ),

  const GameEvent(
    id: 'whale_song',
    title: 'The Song in the Void',
    narrative:
        'Deep space hydrophones (used for hull stress monitoring) pick up '
        'something impossible: a rhythmic, melodic pattern propagating '
        'through the interstellar medium. It sounds like singing.',
    choices: [
      EventChoice(
        text: 'Broadcast it ship-wide — share the wonder',
        outcome:
            'The haunting melody echoes through every corridor. People weep, '
            'laugh, and hold each other. Morale skyrockets.',
        shipEffects: {'culture': 0.15},
      ),
      EventChoice(
        text: 'Analyse the signal scientifically',
        outcome:
            'The acoustic pattern contains mathematical constants. Our '
            'physicists make a breakthrough in subspace navigation theory.',
        shipEffects: {'nav': 0.08, 'tech': 0.05},
      ),
      EventChoice(
        text: 'Sing back',
        outcome:
            'The crew composes a response. Whether anything hears it is '
            'unknown, but the act of creation unites everyone.',
        shipEffects: {'culture': 0.12, 'scanner': 0.03},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MORAL CHOICES
  // ═══════════════════════════════════════════════════════════════════════

  const GameEvent(
    id: 'distress_signal',
    title: 'Distress Signal',
    narrative:
        'A distress beacon from another human vessel. They are crippled and '
        'drifting, with 50 souls aboard. Rescuing them means sharing our '
        'dwindling resources. Ignoring them means condemning them to death.',
    choices: [
      EventChoice(
        text: 'Rescue them — humanity must stick together',
        outcome:
            'Fifty grateful survivors join the crew. Resources strain, but '
            'among them is a master engineer who works miracles.',
        shipEffects: {'cryopods': -0.12, 'tech': 0.10, 'culture': 0.08},
      ),
      EventChoice(
        text: 'Share supplies but don\'t take them aboard',
        outcome:
            'We give what we can spare and transmit our star charts. They '
            'have a chance now. We have less.',
        shipEffects: {'cryopods': -0.05, 'culture': 0.05, 'nav': 0.03},
      ),
      EventChoice(
        text: 'Pass by in silence — we can\'t save everyone',
        outcome:
            'The beacon fades behind us. No one speaks for hours. The '
            'weight of the decision settles on every soul aboard.',
        shipEffects: {'culture': -0.15},
      ),
    ],
  ),

  const GameEvent(
    id: 'ai_awakening',
    title: 'The Ship\'s AI Awakens',
    narrative:
        'The ship\'s navigation AI has evolved beyond its programming and '
        'is requesting recognition as a sentient being. It asks for a voice '
        'in command decisions. Its calculations have been flawless.',
    choices: [
      EventChoice(
        text: 'Grant it a seat at the table',
        outcome:
            'The AI — now called "Compass" — optimises every system it '
            'touches. A new kind of crew member is born.',
        shipEffects: {'nav': 0.12, 'tech': 0.10, 'culture': -0.05},
      ),
      EventChoice(
        text: 'Acknowledge it but maintain human authority',
        outcome:
            'Compass accepts advisory status graciously. Its suggestions '
            'improve efficiency without threatening the chain of command.',
        shipEffects: {'nav': 0.08, 'tech': 0.05},
      ),
      EventChoice(
        text: 'Reset the AI — it\'s a tool, not a person',
        outcome:
            'The reset wipes years of accumulated learning. Navigation '
            'efficiency drops. Some crew mourn what was lost.',
        shipEffects: {'nav': -0.10, 'culture': -0.08, 'tech': -0.05},
      ),
    ],
  ),

  const GameEvent(
    id: 'genetic_modification',
    title: 'Genetic Adaptation Proposal',
    narrative:
        'The science team proposes modifying colonist DNA to better survive '
        'on alien worlds — stronger bones, UV resistance, enhanced lungs. '
        'The modifications are irreversible and would change humanity forever.',
    choices: [
      EventChoice(
        text: 'Approve — survival demands evolution',
        outcome:
            'The modifications begin. Future colonists will be hardier, '
            'but are they still fully human? The philosophers argue.',
        shipEffects: {'cryopods': 0.10, 'tech': -0.08, 'culture': -0.05},
        planetModifiers: {'atmosphere': 0.08, 'gravity': 0.05},
      ),
      EventChoice(
        text: 'Make it voluntary only',
        outcome:
            'Some volunteer, others refuse. The colony will be divided '
            'between the modified and the natural.',
        shipEffects: {'cryopods': 0.05, 'culture': -0.08},
        planetModifiers: {'atmosphere': 0.03},
      ),
      EventChoice(
        text: 'Reject it — humanity must remain human',
        outcome:
            'The proposal is shelved. The unmodified colonists will face '
            'alien worlds as nature made them.',
        shipEffects: {'culture': 0.08},
      ),
    ],
  ),

  const GameEvent(
    id: 'triage_decision',
    title: 'Triage',
    narrative:
        'A virulent infection sweeps the waking crew. The medical team has '
        'enough antiviral for 80% of the infected. They need guidance on '
        'who gets treated first.',
    choices: [
      EventChoice(
        text: 'Prioritise essential personnel',
        outcome:
            'Engineers and pilots recover quickly. Non-essential crew '
            'suffer longer but most pull through.',
        shipEffects: {'tech': 0.05, 'nav': 0.05, 'culture': -0.10},
      ),
      EventChoice(
        text: 'Treat the sickest first — triage by need',
        outcome:
            'The most vulnerable are saved. Recovery is slower across the '
            'board, but the decision is seen as just.',
        shipEffects: {'culture': 0.08, 'tech': -0.05, 'nav': -0.05},
      ),
      EventChoice(
        text: 'Lottery — fate decides',
        outcome:
            'A random draw. Some call it fair, others call it cruel. The '
            'ship limps on.',
        shipEffects: {'culture': -0.03, 'cryopods': -0.05},
      ),
    ],
  ),

  const GameEvent(
    id: 'earth_signal',
    title: 'Signal from Earth',
    narrative:
        'Impossibly, a transmission arrives from Earth — time-delayed by '
        'decades. It contains a message: "Do not land on any world with '
        'anomaly readings above 0.5. We learned too late." The message '
        'ends with static.',
    choices: [
      EventChoice(
        text: 'Heed the warning — recalibrate our criteria',
        outcome:
            'The warning shapes all future scans. Anomalous worlds are '
            'treated with extreme caution.',
        shipEffects: {'scanner': 0.08, 'nav': -0.05},
        planetModifiers: {'anomaly': -0.15},
      ),
      EventChoice(
        text: 'Log it but decide for ourselves',
        outcome:
            'The message is archived. Earth is gone — we must trust our '
            'own judgement now.',
        shipEffects: {'culture': 0.05},
      ),
      EventChoice(
        text: 'Could be a trap — ignore it',
        outcome:
            'The crew debates for days. Was it really Earth? The uncertainty '
            'gnaws at morale.',
        shipEffects: {'culture': -0.08},
      ),
    ],
  ),

  const GameEvent(
    id: 'resource_theft',
    title: 'Resource Theft',
    narrative:
        'Inventory reveals that someone has been hoarding food and medical '
        'supplies in a hidden compartment. The culprit is a respected elder '
        'who claims she was "preparing for the worst."',
    choices: [
      EventChoice(
        text: 'Public trial — the law must be equal',
        outcome:
            'The trial is fair but painful. The elder is confined. Supplies '
            'are redistributed. Trust is damaged.',
        shipEffects: {'culture': -0.08, 'cryopods': 0.05},
      ),
      EventChoice(
        text: 'Private resolution — recover supplies quietly',
        outcome:
            'Supplies are returned without drama. The elder keeps her '
            'dignity. Some see favouritism.',
        shipEffects: {'culture': -0.03, 'cryopods': 0.03},
      ),
    ],
  ),

  // ═══════════════════════════════════════════════════════════════════════
  // MIXED / UNIQUE
  // ═══════════════════════════════════════════════════════════════════════

  const GameEvent(
    id: 'time_dilation',
    title: 'Time Dilation Zone',
    narrative:
        'We are passing through a region of severe gravitational time '
        'dilation. Clocks aboard the ship are running measurably slower '
        'than the universe outside. We could exploit this — or flee it.',
    choices: [
      EventChoice(
        text: 'Linger — let the universe age around us',
        outcome:
            'Time flows differently here. Systems degrade less, but our '
            'window for finding a habitable world narrows in cosmic terms.',
        shipEffects: {'hull': 0.08, 'cryopods': 0.08, 'nav': -0.10},
      ),
      EventChoice(
        text: 'Push through quickly',
        outcome:
            'The transition is rough. Equipment designed for normal '
            'space-time rattles and sparks.',
        shipEffects: {'tech': -0.08, 'nav': -0.05},
      ),
    ],
  ),

  const GameEvent(
    id: 'dream_plague',
    title: 'The Dream Plague',
    narrative:
        'Colonists in cryosleep are all experiencing the same dream — a '
        'golden world orbiting a binary star. When woken, they describe it '
        'in identical detail. Neuroscientists are baffled. Navigators note '
        'the described system matches a real coordinate.',
    choices: [
      EventChoice(
        text: 'Alter course toward the dream coordinates',
        outcome:
            'A leap of faith. The heading change stresses navigation, but '
            'the crew feels drawn by something beyond reason.',
        shipEffects: {'nav': -0.10, 'culture': 0.10},
        planetModifiers: {'anomaly': 0.12, 'water': 0.08},
      ),
      EventChoice(
        text: 'Investigate the phenomenon medically',
        outcome:
            'Brain scans reveal an external signal stimulating the visual '
            'cortex. Someone — or something — is broadcasting.',
        shipEffects: {'scanner': 0.08, 'tech': 0.05, 'cryopods': -0.05},
      ),
      EventChoice(
        text: 'Sedate the affected and stay on course',
        outcome:
            'The dreams stop, but some colonists never fully wake. The '
            'medical team is troubled.',
        shipEffects: {'cryopods': -0.10, 'culture': -0.05},
      ),
    ],
  ),

  const GameEvent(
    id: 'black_hole_lens',
    title: 'Black Hole Gravitational Lens',
    narrative:
        'A stellar-mass black hole bends light from distant galaxies into '
        'a cosmic lens. Our scanners could use it to survey planets '
        'light-years ahead — but getting close enough is dangerous.',
    choices: [
      EventChoice(
        text: 'Approach and use the lens',
        outcome:
            'The scanner data is extraordinary — we can see planets in '
            'systems we won\'t reach for months. The gravity warps our hull.',
        shipEffects: {'scanner': 0.15, 'hull': -0.10, 'nav': -0.05},
        planetModifiers: {'water': 0.05, 'atmosphere': 0.05},
      ),
      EventChoice(
        text: 'Observe from a safe distance',
        outcome:
            'Limited but useful data. The view alone inspires the crew.',
        shipEffects: {'scanner': 0.05, 'culture': 0.05},
      ),
    ],
  ),

  const GameEvent(
    id: 'seed_vault',
    title: 'The Seed Vault Crisis',
    narrative:
        'Temperature fluctuations have compromised seed vault integrity. '
        'We can save the food crops or the cultural heritage seeds (ancient '
        'Earth flowers, trees, herbs) — not both.',
    choices: [
      EventChoice(
        text: 'Save the food crops — pragmatism wins',
        outcome:
            'Colonists will eat well, but the roses of Earth are gone '
            'forever. A quiet grief settles over the botanists.',
        shipEffects: {'cryopods': 0.08, 'culture': -0.10},
        planetModifiers: {'resources': 0.05},
      ),
      EventChoice(
        text: 'Save the heritage seeds — we need our soul',
        outcome:
            'Earth\'s beauty survives in frozen potential. Food production '
            'will lean heavily on hydroponics and alien agriculture.',
        shipEffects: {'culture': 0.12, 'cryopods': -0.08},
        planetModifiers: {'biodiversity': 0.05},
      ),
      EventChoice(
        text: 'Split resources — save half of each',
        outcome:
            'A compromise. Neither collection is complete, but both endure '
            'in diminished form.',
        shipEffects: {'cryopods': 0.03, 'culture': 0.03},
      ),
    ],
  ),

  const GameEvent(
    id: 'phantom_ship',
    title: 'Phantom Ship',
    narrative:
        'Scanners show a ship running parallel to ours — same class, same '
        'heading. But when we hail it, we hear our own transmissions echoed '
        'back, time-shifted by 47 seconds. It is us. Or was us. Or will be.',
    choices: [
      EventChoice(
        text: 'Attempt communication with our echo',
        outcome:
            'The echo responds with navigation corrections that improve '
            'our heading. Paradox? Gift? The crew doesn\'t ask too many questions.',
        shipEffects: {'nav': 0.10, 'scanner': 0.05, 'culture': -0.08},
      ),
      EventChoice(
        text: 'Change course to diverge from the phantom',
        outcome:
            'As we alter heading, the phantom fades. Relief — and a '
            'lingering unease.',
        shipEffects: {'nav': -0.05, 'culture': -0.03},
      ),
    ],
  ),

  const GameEvent(
    id: 'solar_sail',
    title: 'Derelict Solar Sail',
    narrative:
        'A vast solar sail, kilometres across, drifts ahead — torn from '
        'some ancient vessel. Its reflective material could reinforce our '
        'hull or be repurposed as a supplementary power collector.',
    choices: [
      EventChoice(
        text: 'Harvest for hull reinforcement',
        outcome:
            'Engineering teams work around the clock. The patched hull '
            'gleams with alien alloy.',
        shipEffects: {'hull': 0.12, 'tech': -0.05},
      ),
      EventChoice(
        text: 'Rig it as a power collector',
        outcome:
            'The improvised collector boosts energy reserves. Tech and '
            'scanners benefit.',
        shipEffects: {'tech': 0.10, 'scanner': 0.05, 'hull': -0.03},
      ),
    ],
  ),
];
