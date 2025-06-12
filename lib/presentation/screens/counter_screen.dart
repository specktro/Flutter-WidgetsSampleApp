import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
            onPressed: () {
              ref.read(isDarkModeProvider.notifier).update((isDarkMode) => !isDarkMode);
            }
          )
        ],
      ),
      body: Center(
        child: Text('Value: $clickCounter', style: Theme.of(context).textTheme.titleLarge)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(themeNotifierProvider.notifier).toogleDarkMode();
        },
        child: const Icon(Icons.add)
      ),
    );
  }
}