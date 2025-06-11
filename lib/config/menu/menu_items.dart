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
  ),
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Animated stateful widget',
      link: '/animated',
      icon: Icons.check_box_outlined
  ),
  MenuItem(
      title: 'UI Controls + Tiles',
      subtitle: 'Some flutter controls',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined
  ),
  MenuItem(
      title: 'App Tutorial',
      subtitle: 'A classic application walkthrough',
      link: '/tutorial',
      icon: Icons.accessible_rounded
  ),
  MenuItem(
      title: 'Infinite Scroll & Pull',
      subtitle: 'Infinite list and pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded
  )
];