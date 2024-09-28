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
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children:[
                  Container(
                    height: 300,
                    width: 10,
                    color: Colors.brown,
                  ),
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 35,
                        width: 150,
                        color: Colors.orange,
                      ),
                      Container(
                        height: 35,
                        width: 150,
                        color: Colors.white,
                        child: Image.network(
                            "https://imgs.search.brave.com/ACJRwT56NqkEYbfeyo_1EPSqltglP8q82PtilBGke8Q/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzU3LzI1/L2MxLzU3MjVjMWQz/MWVmYmZiOTBhNzgz/NDg5ZDk3YjY5MGVj/LmpwZw"),
                      ),
                      Container(
                        height: 35,
                        width: 150,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
              // Base sections (aligned to the middle of the rod)
              // const SizedBox(height: 20), // Space between flagpole and base
              // Container(
              //   height: 20,
              //   width: 60,
              //   color: Colors.brown,
              // ),
              // Container(
              //   height: 20,
              //   width: 90,
              //   color: Colors.brown,
              // ),
              // Container(
              //   height: 20,
              //   width: 120,
              //   color: Colors.brown,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
