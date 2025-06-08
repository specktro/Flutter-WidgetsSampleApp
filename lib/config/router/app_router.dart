import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
    GoRoute(path: '/buttons', builder: (context, state) => const ButtonsScreen()),
    GoRoute(path: '/cards', builder: (context, state) => const CardsScreen())
  ]
);