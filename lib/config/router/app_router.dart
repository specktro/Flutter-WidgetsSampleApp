import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/animated_screen.dart';
import 'package:widgets_app/presentation/screens/app_tutorial_screen.dart';
import 'package:widgets_app/presentation/screens/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home_screen.dart';
import 'package:widgets_app/presentation/screens/infinite_scroll_screen.dart';
import 'package:widgets_app/presentation/screens/progress_screen.dart';
import 'package:widgets_app/presentation/screens/snack_bar_screen.dart';
import 'package:widgets_app/presentation/screens/ui_controls_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/buttons', builder: (context, state) => const ButtonsScreen()),
    GoRoute(path: '/cards', builder: (context, state) => const CardsScreen()),
    GoRoute(path: '/progress', builder: (context, state) => const ProgressScreen()),
    GoRoute(path: '/snackbars', builder: (context, state) => const SnackBarScreen()),
    GoRoute(path: '/animated', builder: (context, state) => const AnimatedScreen()),
    GoRoute(path: '/ui-controls', builder: (context, state) => const UiControlsScreen()),
    GoRoute(path: '/tutorial', builder: (context, state) => const AppTutorialScreen()),
    GoRoute(path: '/infinite', builder: (context, state) => const InfiniteScrollScreen()),
  ]
);