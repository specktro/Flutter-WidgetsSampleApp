import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert(selectedColor >= 0, 'selectedColor must be greater than 0'),
      assert(selectedColor < colorList.length, 'selectedColor must be greater or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: colorList[selectedColor]
  );
}