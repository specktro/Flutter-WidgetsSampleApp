import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon
  });
}

const List<MenuItem> appMenuItems = [
  MenuItem(
    title: 'Buttons',
    subtitle: 'Different kinds of buttons',
    link: '/buttons',
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
      title: 'Cards',
      subtitle: 'A stylized container',
      link: '/cards',
      icon: Icons.credit_card
  ),
  MenuItem(
      title: 'Progress Indicators',
      subtitle: 'Standard and controlled',
      link: '/progress',
      icon: Icons.refresh_rounded
  ),
  MenuItem(
      title: 'Snackbars and dialogs',
      subtitle: 'Screen indicators',
      link: '/snackbars',
      icon: Icons.info_outline
  )
];

// GoRoute(path: '/animated', builder: (context, state) => const AnimatedScreen()),
// GoRoute(path: '/tutorial', builder: (context, state) => const AppTutorialScreen()),
// GoRoute(path: '/infinite', builder: (context, state) => const InfiniteScrollScreen()),
// GoRoute(path: '/progress', builder: (context, state) => const ProgressScreen()),
// GoRoute(path: '/snackbar', builder: (context, state) => const SnackBarScreen()),
// GoRoute(path: '/ui-controls', builder: (context, state) => const UiControlsScreen()),