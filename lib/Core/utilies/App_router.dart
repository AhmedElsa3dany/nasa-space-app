import 'package:go_router/go_router.dart';
import 'package:nasa/Feature/Home/Presentation/Views/DefinitionView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/Entertainmentview.dart';
import 'package:nasa/Feature/Home/Presentation/Views/GamesView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/GlieseView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/K2-18bView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/KeplerView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/LHS_1140bView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/LearningView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/OsirisView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/PegasiView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/ProximaView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/Quiz_view.dart';
import 'package:nasa/Feature/Home/Presentation/Views/ResourcesView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/SimulationView.dart';
import 'package:nasa/Feature/Home/Presentation/Views/TRAPPISTView.dart';
import 'package:nasa/Feature/Intro/presentation/view/intro_view.dart';
import 'package:nasa/Feature/Mainmenu/presentation/view/mainmenuview.dart';
import 'package:nasa/Feature/Splash/presentation/view/Spash%20view.dart';

abstract class Approuter {
// GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => Spashview(),
      ),
      GoRoute(
        path: '/introview',
        builder: (context, state) => IntroView(),
      ),
      GoRoute(
        path: '/mainmenu',
        builder: (context, state) => Mainmenuview(),
      ),
      GoRoute(
        path: '/simulation',
        builder: (context, state) => Simulationview(),
      ),
      GoRoute(
        path: '/games',
        builder: (context, state) => Gamesview(),
      ),
      GoRoute(
        path: '/entertainment',
        builder: (context, state) => Entertainmentview(),
      ),
      GoRoute(
        path: '/quizview',
        builder: (context, state) => QuizView(),
      ),
      GoRoute(
        path: '/learning',
        builder: (context, state) => LearningView(),
      ),
      GoRoute(
        path: '/resource',
        builder: (context, state) => Resourcesview(),
      ),
      GoRoute(
        path: '/kepler',
        builder: (context, state) => Keplerview(),
      ),
      GoRoute(
        path: '/definition',
        builder: (context, state) => DefinitionView(),
      ),
      GoRoute(
        path: '/gliese',
        builder: (context, state) => GlieseView(),
      ),
      GoRoute(
        path: '/k2_18b',
        builder: (context, state) => K2_18bView(),
      ),
      GoRoute(
        path: '/LHS_1140b',
        builder: (context, state) => LHS_1140b(),
      ),
      GoRoute(
        path: '/osiris',
        builder: (context, state) => OsirisView(),
      ),
      GoRoute(
        path: '/ pegasi',
        builder: (context, state) => PegasiView(),
      ),
      GoRoute(
        path: '/proxima',
        builder: (context, state) => ProximaView(),
      ),
      GoRoute(
        path: '/trappist',
        builder: (context, state) => TrappistView(),
      ),
    ],
  );
}
