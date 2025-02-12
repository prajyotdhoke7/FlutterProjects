import 'package:flutter/material.dart';
import 'package:internship_pro/view/homescreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homescreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 4,
          color: Color.fromARGB(255, 251, 227, 255),
          // centerTitle: true,
        ),
      ),
    );
  }
}
