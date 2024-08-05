import 'package:go_router/go_router.dart';
import 'package:rhythmbox/screens/sound_sample_list.dart';
import 'package:rhythmbox/screens/sequences/sequence_specification.dart';
import 'package:rhythmbox/screens/sequences/sequence_list.dart';
import 'package:rhythmbox/screens/meter_list.dart';
import 'package:rhythmbox/screens/beat_accent_list.dart';
import 'package:rhythmbox/screens/metronome.dart';
import 'package:rhythmbox/screens/login.dart';
import 'package:rhythmbox/screens/sound_sample_specification.dart';
import 'package:rhythmbox/screens/beat_accent_specification.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SoundSampleListScreen(),
      ),
      GoRoute(
        path: '/sequence_specification',
        builder: (context, state) => const SequenceSpecificationScreen(),
      ),
      GoRoute(
        path: '/sequence_list',
        builder: (context, state) => SequenceListScreen(),
      ),
      GoRoute(
        path: '/meter_list',
        builder: (context, state) => MeterListScreen(),
      ),
      GoRoute(
        path: '/beat_accent_list',
        builder: (context, state) => BeatAccentListScreen(),
      ),
      GoRoute(
        path: '/metronome',
        builder: (context, state) => const MetronomeScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/sound_sample_specification',
        builder: (context, state) => const SoundSampleSpecificationScreen(),
      ),
      GoRoute(
        path: '/beat_accent_specification',
        builder: (context, state) => const BeatAccentSpecificationScreen(),
      ),
    ],
  );
}
