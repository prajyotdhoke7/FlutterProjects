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
      title: "Row rotation",
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          // color: Colors.blueAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
