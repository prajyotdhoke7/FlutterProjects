import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Column Container"),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.orange,
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.white,
                  child: Image.network(
                      "https://imgs.search.brave.com/ACJRwT56NqkEYbfeyo_1EPSqltglP8q82PtilBGke8Q/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzU3LzI1/L2MxLzU3MjVjMWQz/MWVmYmZiOTBhNzgz/NDg5ZDk3YjY5MGVj/LmpwZw"),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
              ],
            ),
          )),
    );
  }
}
