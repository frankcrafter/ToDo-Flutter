import 'package:flutter/material.dart';
import 'package:todo_app/pages/home_page.dart';
import 'package:todo_app/themes/dark_theme.dart';
import 'package:todo_app/themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      home: HomePage(),
    );
  }
}
