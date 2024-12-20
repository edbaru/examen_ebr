import 'package:examen_ebr/screens/home_screen_ebr.dart';
import 'package:examen_ebr/theme/app_theme_ebr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen App',
      home: const HomeScreen(),
      theme: AppTheme.lightTheme,
    );
  }
}
