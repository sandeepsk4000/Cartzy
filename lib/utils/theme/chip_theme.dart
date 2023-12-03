import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();
  // Light chip theme

  static ChipThemeData lightChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: Colors.blue,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12.0),
      checkmarkColor: Colors.white);

  // dark chip[ theme

  static ChipThemeData darkChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.white),
      selectedColor: Colors.blue,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12.0),
      checkmarkColor: Colors.white);
}
