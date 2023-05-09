import 'package:flutter/material.dart';

import '../styles/app_styles.dart';
import '../styles/colors_app.dart';

class ThemeConfig {
  ThemeConfig._();

  static final theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorsApp.instance.primary,
      primary: ColorsApp.instance.primary,
      secondary: ColorsApp.instance.secondary,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: AppStyles.instance.primaryButton,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: EdgeInsets.all(20),
      border: ,
      enabledBorder: ,
      focusedBorder: ,
    ),
  );
}
