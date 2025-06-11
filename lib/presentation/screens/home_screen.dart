import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';
import 'package:widgets_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter and material widgets')
      ),
      body: const _HomeView(),
      drawer: const SideMenu(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) => _CustomListTile(menuItem: appMenuItems[index])
    );
  }
}

class _CustomListTile extends StatelessWidget {
  final MenuItem menuItem;
  const _CustomListTile({
    required this.menuItem
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
        leading: Icon(menuItem.icon, color: colors.primary),
        trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
        title: Text(menuItem.title),
        subtitle: Text(menuItem.subtitle),
        onTap: () {
          context.push(menuItem.link);
        }
    );
  }
}