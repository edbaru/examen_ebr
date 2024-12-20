import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.yellow;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //Color primario
    primaryColor: primary,
    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
      iconTheme: IconThemeData(color: Colors.black),
    ),
    //ListTile Theme
    listTileTheme: const ListTileThemeData(
      iconColor: primary,
    ),
    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),
    //FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      shape: StadiumBorder(),
      elevation: 0,
      foregroundColor: Colors.white,
    ),
    //ElevatedButton
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
        elevation: 5,
      ),
    ),
    //InputDecoration
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: const TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: primary),
          borderRadius: BorderRadius.circular(10)),
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: primary),
          borderRadius: BorderRadius.circular(10)),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    //Slider
    sliderTheme: const SliderThemeData(
      activeTrackColor: primary,
      thumbColor: primary,
    ),
  );
}
