import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen')
      ),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        }
      )
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text('Elevated')
            ),
            const ElevatedButton(
                onPressed: null,
                child: Text('Elevated Disabled')
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.access_alarm_rounded),
                label: Text('Elevated Icon')
            ),
            FilledButton(
                onPressed: () {}, 
                child: Text('Filled')
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_outlined),
              label: Text('Filled Icon')
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined')
            ),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.ac_unit_outlined),
                label: const Text('Outlined Icon')
            ),
            TextButton(
              onPressed: () {},
              child: Text('Text Button')
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.backpack_outlined),
              label: Text('Text Button Icon')
            ),
            const _CustomButton(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_rounded)
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white)
              )
            )
          ]
        )
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Colors.deepPurple,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Custom Button', style: TextStyle(color: Colors.white))
          ),
        ),
      ),
    );
  }
}