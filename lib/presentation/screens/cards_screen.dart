import 'package:flutter/material.dart';

const List<Map<String, dynamic>> cards = [
  {
    'elevation': 0.0,
    'label': 'Elevation 0'
  },
  {
    'elevation': 1.0,
    'label': 'Elevation 1'
  },
  {
    'elevation': 2.0,
    'label': 'Elevation 2'
  },
  {
    'elevation': 3.0,
    'label': 'Elevation 3'
  },
  {
    'elevation': 4.0,
    'label': 'Elevation 4'
  },
  {
    'elevation': 5.0,
    'label': 'Elevation 5'
  }
];

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Cards Screen')
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cards.map((card) => _CardType1(elevation: card['elevation'], label: card['label'])),
          ...cards.map((card) => _CardType2(elevation: card['elevation'], label: card['label'])),
          ...cards.map((card) => _CardType3(elevation: card['elevation'], label: card['label'])),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType1({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: elevation,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        icon: Icon(Icons.more_vert_outlined),
                        onPressed: () {}
                    )
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(label)
                )
              ],
            )
        )
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType2({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          side: BorderSide(
            color: colors.outline
          )
        ),
        elevation: elevation,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        icon: Icon(Icons.more_vert_outlined),
                        onPressed: () {}
                    )
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('$label - outline')
                )
              ],
            )
        )
    );
  }
}

class _CardType3 extends StatelessWidget {
  final String label;
  final double elevation;

  const _CardType3({required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
        color: colors.surfaceContainerHighest,
        elevation: elevation,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        icon: Icon(Icons.more_vert_outlined),
                        onPressed: () {}
                    )
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('$label - filled')
                )
              ],
            )
        )
    );
  }
}