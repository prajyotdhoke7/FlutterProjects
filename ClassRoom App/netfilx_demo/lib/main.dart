import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.network(
                  "https://cdn-icons-png.flaticon.com/128/732/732228.png",
                ),
              ),
              const Spacer(), // Used for spacing between items in the row
              const Icon(
                Icons.download_outlined,
                size: 35,
                color: Colors.white,
              ),
              const SizedBox(width: 10),
              const Icon(
                Icons.search,
                size: 35,
                color: Colors.white,
              )
            ],
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.black,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const Center(
                          child: Text(
                            "TV Shows",
                            style: TextStyle(fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const Center(
                          child: Text(
                            "Movies",
                            style: TextStyle(fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: const Center(
                          child: Text(
                            "Categories",
                            style: TextStyle(fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 525,
                    width: 350,
                    color: Colors.amber,
                    child: Image.network(
                      "https://imgs.search.brave.com/ZLL3GS94xMIY2xkGBQvHs_X95a00D_n6-ZTxUD0j3JQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NjFqeEtPWkdVOUwu/anBn",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 330,
                    child: ListView.builder(
                      itemCount: 5,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Actions Movies",
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 300,
                                    width: 200,
                                    child: Image.network(
                                        "https://imgs.search.brave.com/ZLL3GS94xMIY2xkGBQvHs_X95a00D_n6-ZTxUD0j3JQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NjFqeEtPWkdVOUwu/anBn"),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 300,
                                    width: 200,
                                    child: Image.network(
                                        "https://imgs.search.brave.com/ZLL3GS94xMIY2xkGBQvHs_X95a00D_n6-ZTxUD0j3JQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NjFqeEtPWkdVOUwu/anBn"),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 300,
                                    width: 200,
                                    child: Image.network(
                                        "https://imgs.search.brave.com/ZLL3GS94xMIY2xkGBQvHs_X95a00D_n6-ZTxUD0j3JQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NjFqeEtPWkdVOUwu/anBn"),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 300,
                                    width: 200,
                                    child: Image.network(
                                        "https://imgs.search.brave.com/ZLL3GS94xMIY2xkGBQvHs_X95a00D_n6-ZTxUD0j3JQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NjFqeEtPWkdVOUwu/anBn"),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    height: 300,
                                    width: 200,
                                    child: Image.network(
                                        "https://imgs.search.brave.com/ZLL3GS94xMIY2xkGBQvHs_X95a00D_n6-ZTxUD0j3JQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NjFqeEtPWkdVOUwu/anBn"),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
