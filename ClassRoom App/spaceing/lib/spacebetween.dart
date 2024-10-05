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
      title: "Spacing",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Spacing Between"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.blueAccent,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
