import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/app_theme.dart';

final isDarkModeProvider = StateProvider<bool>((ref) => false);
final colorListProvider = Provider((ref) => colorList);
final selectedColorProvider = StateProvider<int>((ref) => 0);