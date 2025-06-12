import 'package:flutter/material.dart';

enum Transportation { car, plane, boat, submarine }

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls + Tiles'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloperMode = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Aditional controls'),
          value: isDeveloperMode,
          onChanged: (value) {
            setState(() {
              isDeveloperMode = !isDeveloperMode;
            });
          }
        ),
        ExpansionTile(
          title: const Text('Transportation vehicle'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('Car'),
                subtitle: const Text('Travel by car'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.car;
                  });
                }
            ),
            RadioListTile(
                title: const Text('Plane'),
                subtitle: const Text('Travel by plane'),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.plane;
                  });
                }
            ),
            RadioListTile(
                title: const Text('Boat'),
                subtitle: const Text('Travel by boat'),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.boat;
                  });
                }
            ),
            RadioListTile(
                title: const Text('Submarine'),
                subtitle: const Text('Travel by submarine'),
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.submarine;
                  });
                }
            )
          ],
        ),
        CheckboxListTile(
          title: const Text('Breakfast?'),
          subtitle: const Text('I want breakfast'),
          value: wantsBreakfast,
          onChanged: (value) => setState(() {
            wantsBreakfast = !wantsBreakfast;
          })
        ),
        CheckboxListTile(
            title: const Text('Lunch?'),
            subtitle: const Text('I want lunch'),
            value: wantsLunch,
            onChanged: (value) => setState(() {
              wantsLunch = !wantsLunch;
            })
        ),
        CheckboxListTile(
            title: const Text('Dinner?'),
            subtitle: const Text('I want dinner'),
            value: wantsDinner,
            onChanged: (value) => setState(() {
              wantsDinner = !wantsDinner;
            })
        )
      ]
    );
  }
}