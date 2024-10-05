import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Column Scroll",
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Column with Scroll"),
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                    "https://images.unsplash.com/photo-1676491167770-bce474fe0024?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1vdmllJTIwcG9zdGVyfGVufDB8fDB8fHww"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.black,
                ),
                Image.network(
                    "https://images.unsplash.com/photo-1676491167770-bce474fe0024?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1vdmllJTIwcG9zdGVyfGVufDB8fDB8fHww"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.black,
                ),
                Image.network(
                    "https://images.unsplash.com/photo-1676491167770-bce474fe0024?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1vdmllJTIwcG9zdGVyfGVufDB8fDB8fHww"),
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.black,
                ),
              ],
            ),
          )),
    );
  }
}
