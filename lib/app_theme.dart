import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color _lightPrimaryColor = Color(0xFFf9f7f7);
  static const Color _lightSecondaryColor = Color(0xFFdbe2ef);
  static const Color _lightPrimaryVariantColor = Color(0xFF3f72af);
  static const Color _lightOnPrimaryColor = Color(0xFF112d4e);

  static const Color _darkPrimaryColor = Color(0xFF1b262c);
  static const Color _darkSecondaryColor = Color(0xFF0f4c75);
  static const Color _darkPrimaryVariantColor = Color(0xFF3282b8);
  static const Color _darkOnPrimaryColor = Color(0xFFbbe1fa);

  static final ThemeData lightTheme = ThemeData(
      primaryColor: _lightPrimaryColor,
      accentColor: _lightOnPrimaryColor,
      textTheme: TextTheme(
          title: TextStyle(color: _lightOnPrimaryColor),
          display1: TextStyle(color: _lightOnPrimaryColor),
          display2: TextStyle(color: _lightOnPrimaryColor),
          display3: TextStyle(color: _lightOnPrimaryColor),
          display4: TextStyle(color: _lightOnPrimaryColor),
          subhead: TextStyle(color: _lightOnPrimaryColor),
          subtitle: TextStyle(color: _lightOnPrimaryColor),
          headline: TextStyle(color: _lightOnPrimaryColor),
          body1: TextStyle(color: _lightOnPrimaryColor),
          body2: TextStyle(color: _lightOnPrimaryColor),
          caption: TextStyle(color: _lightPrimaryVariantColor),
          overline: TextStyle(color: _lightPrimaryVariantColor),
          button: TextStyle(color: _lightPrimaryColor)),
      colorScheme: ColorScheme.light(
        brightness: Brightness.light,
        primary: _lightPrimaryColor,
        primaryVariant: _lightPrimaryVariantColor,
        secondary: _lightSecondaryColor,
        onPrimary: _lightOnPrimaryColor,
      ),
      cardColor: _lightSecondaryColor,
      cardTheme: CardTheme(
        color: _lightSecondaryColor,
      ),
      scaffoldBackgroundColor: _lightPrimaryColor,
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
          labelStyle: TextStyle(color: _lightOnPrimaryColor),
          hintStyle: TextStyle(color: _lightSecondaryColor)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: _lightPrimaryColor,
        backgroundColor: _lightOnPrimaryColor,
      ),
      appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: _lightPrimaryColor,
          iconTheme: IconThemeData(color: _lightOnPrimaryColor)));

  static final ThemeData darkTheme = ThemeData(
      primaryColor: _darkPrimaryColor,
      accentColor: _darkOnPrimaryColor,
      focusColor: _darkOnPrimaryColor,
      textTheme: TextTheme(
          title: TextStyle(color: _darkOnPrimaryColor),
          display1: TextStyle(color: _darkOnPrimaryColor),
          display2: TextStyle(color: _darkOnPrimaryColor),
          display3: TextStyle(color: _darkOnPrimaryColor),
          display4: TextStyle(color: _darkOnPrimaryColor),
          subhead: TextStyle(color: _darkOnPrimaryColor),
          subtitle: TextStyle(color: _darkOnPrimaryColor),
          headline: TextStyle(color: _darkOnPrimaryColor),
          body1: TextStyle(color: _darkOnPrimaryColor),
          body2: TextStyle(color: _darkOnPrimaryColor),
          button: TextStyle(color: _darkPrimaryVariantColor),
          caption: TextStyle(color: _darkSecondaryColor),
          overline: TextStyle(color: _darkSecondaryColor)),
      buttonTheme: ButtonThemeData(
        buttonColor: _darkSecondaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        primaryVariant: _darkPrimaryVariantColor,
        onPrimary: _darkOnPrimaryColor,
        secondary: _darkSecondaryColor,
        onSurface: _darkPrimaryVariantColor,
      ),
      cardColor: _darkSecondaryColor,
      cardTheme: CardTheme(
        color: _darkSecondaryColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
          labelStyle: TextStyle(color: _darkOnPrimaryColor),
          hintStyle: TextStyle(color: _darkSecondaryColor)),
      scaffoldBackgroundColor: _darkPrimaryColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          foregroundColor: _darkPrimaryColor,
          backgroundColor: _darkOnPrimaryColor),
      appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          color: _darkPrimaryColor,
          iconTheme: IconThemeData(color: _darkOnPrimaryColor)));
}
