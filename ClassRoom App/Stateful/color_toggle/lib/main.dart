import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToggleColor(),
    );
  }
}

class ToggleColor extends StatefulWidget {
  const ToggleColor({super.key});
  @override
  State<ToggleColor> createState() => _ToggleColorState();
}

class _ToggleColorState extends State<ToggleColor> {
  bool change = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Color"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: change ? Colors.red : Colors.green,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (change == true) {
            change = false;
          } else {
            change = true;
          }
          setState(() {});
        },
        child: const Icon(Icons.loop),
      ),
    );
  }
}
