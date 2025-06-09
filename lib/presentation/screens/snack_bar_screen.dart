import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: const Text('Hi snackbar world!'),
      action: SnackBarAction(
        label: 'Ok!',
        onPressed: () {},
      ),
      duration: const Duration(seconds: 2)
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars and dialogs'),
      ),
      body: const _SnackBarView(),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Show snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context)
      )
    );
  }
}

class _SnackBarView extends StatelessWidget {
  const _SnackBarView();

  void openDialog(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Are you sure?'),
        content: const Text('Are you pretty sure?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel')
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Ok')
          )
        ]
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () {
              showAboutDialog(
                context: context,
                children: [
                  const Text('This is a sample dialog')
                ]
              );
            },
            child: Text('Used licenses')
          ),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: Text('Show dialog')
          )
        ]
      )
    );
  }
}