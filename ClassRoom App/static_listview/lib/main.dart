import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "List View",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List view Demo"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.network(
                "https://images.unsplash.com/photo-1676491167770-bce474fe0024?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1vdmllJTIwcG9zdGVyfGVufDB8fDB8fHww"),
            const Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            const Text(
              "Bhari",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              onTap: () {
                print("Button Daba diyaa");
              },
              child: Container(
                height: 50,
                color: Colors.blueAccent,
                child: const Text("Press Me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
