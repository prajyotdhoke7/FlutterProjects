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
      home: ToggleBarColor(),
    );
  }
}

class ToggleBarColor extends StatefulWidget {
  const ToggleBarColor({super.key});
  @override
  State<ToggleBarColor> createState() => _ToggleBarColorState();
}

class _ToggleBarColorState extends State<ToggleBarColor> {
  bool change = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Color"),
        centerTitle: true,
        backgroundColor: change ? Colors.amberAccent : Colors.blueAccent,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: change ? Colors.red : Colors.green,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: change ? Colors.amberAccent : Colors.blueAccent,
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
