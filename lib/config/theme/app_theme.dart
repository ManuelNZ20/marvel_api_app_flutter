import 'package:flutter/material.dart';

class AppTheme {

  ThemeData themeData() => ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.transparent
    ),
  );
}