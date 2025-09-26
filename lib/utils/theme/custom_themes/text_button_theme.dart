import 'package:flutter/material.dart';

class EStoreTextButtonTheme {
  EStoreTextButtonTheme._();

  static final lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Color.fromARGB(255, 94, 255, 168),
      textStyle: const TextStyle(
        fontFamily: 'Comfortaa',
        fontSize: 13.0,
        color: Color.fromARGB(255, 94, 255, 168),
      ),
    ),
  );

  static final darkTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Color.fromARGB(255, 158, 255, 210),

      textStyle: const TextStyle(
        fontFamily: 'Comfortaa',
        fontSize: 13.0,
        color: Color.fromARGB(255, 158, 255, 210),
      ),
    ),
  );
}
