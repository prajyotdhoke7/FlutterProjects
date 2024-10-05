import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyShop(),
    );
  }
}

class MyShop extends StatefulWidget {
  const MyShop({super.key});

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Text("Shoes"),
              SizedBox(
                width: 280,
              ),
              Icon(Icons.shopping_cart_outlined)
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 400,
                width: 500,
                child: Image.network(
                  "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                  fit: BoxFit.fitHeight,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Nike Air Force 1''07",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 113, 27, 225),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "SHOES",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 113, 27, 225),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "FOOTWEAR",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                    "With iconic style and lengendary comfort,the AF-1 was madde to be worn on repeat. this iteration puts a fresh spin on the hoopsclasssic with crisp leather,eraechoing '80s construction and reflective-desgin Swoosh logos."),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text("Quantity"),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: const SizedBox(child: Icon(Icons.remove)),
                      onTap: () {
                        if (count != 0) {
                          count--;
                          setState(() {});
                        }
                      },
                    ),
                    SizedBox(
                      child: Text("$count"),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      child: const SizedBox(child: Icon(Icons.add)),
                      onTap: () {
                        count++;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 45,
                  width: 400,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 113, 27, 225),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      "PURCHASE",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
