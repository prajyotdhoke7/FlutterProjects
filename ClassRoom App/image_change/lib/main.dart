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
      home: ImageChange(),
    );
  }
}

class ImageChange extends StatefulWidget {
  const ImageChange({super.key});
  @override
  State createState() => _ImageChangeState();
}

class _ImageChangeState extends State {
  List<String> players = [
    "https://imgs.search.brave.com/7lXafkOUrkCFCNnWDcMRo5FEBBAZAaDmE8hm5t57Ulo/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvaW5k/aWFuLWNyaWNrZXQt/cGxheWVycy1oYW5k/c2hha2UtNnNueXVr/cGRndDl4d2g5MC5q/cGc",
    "https://imgs.search.brave.com/aRjQrADoZ4Mj3Vg3Lyaz6aEI7_oGA4-edT331rRtjoE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvNzY5/ODMzMjkvcGhvdG8v/anViaWxhbnQtaW5k/aWFuLWNyaWNrZXQt/dGVhbS1wbGF5ZXJz/LXJhaXNlLXRoZS1p/Y2Mtd29ybGQtdHdl/bnR5MjAtdHJvcGh5/LWFmdGVyLWRlZmVh/dGluZy5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9UUJ5dGhQ/V0hyUmZUY241QU5B/bG9vN1BrbE9Sd3Nx/b1hkZ1pJUlViYTRw/ST0",
    "https://imgs.search.brave.com/8DZ9T7OjDK_i8R7ciBA17NChtd_F4TAfFXIulscg6pY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQz/ODM2NzAxMy9waG90/by9hZGVsYWlkZS1h/dXN0cmFsaWEtaW5k/aWFuLXBsYXllcnMt/Y2VsZWJyYXRlLXRo/ZS13aW4tZHVyaW5n/LXRoZS1pY2MtbWVu/cy10MjAtd29ybGQt/Y3VwLW1hdGNoLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1E/ZTE0emlkQjh3OTVs/MG1SbTFWT0lyMEVf/bk4yZWxXM3VfQ1pG/ZDB0RVkwPQ",
    "https://imgs.search.brave.com/IyC0_jc42WtNMU37Cnl3D9BhnctX-hv0WG8ecpjypbQ/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTY3/MTQ2ODgwNS9waG90/by9jb2xvbWJvLXNy/aS1sYW5rYS1pbmRp/YW4tcGxheWVycy1j/ZWxlYnJhdGVzLWFm/dGVyLXRha2luZy10/aGUtd2lja2V0LW9m/LXByYW1vZC1tYWR1/c2hhbi1kdXJpbmcu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PVNXU0JLTzhRRVBK/R3BwcHRsdjFIaWJl/b0hhZjlPMUhBem90/bnFXNktJTTQ9",
    "https://imgs.search.brave.com/5FLPaFZKS-kSNTB8OsLWATMnAO0YjJPsoTkq8OqL7sA/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzA3LzQ5Lzg1LzA2/LzM2MF9GXzc0OTg1/MDY0OF9ZZDZvSmp2/blVlbktKVXplMjJX/MGhXRnJGZ3B5eFNJ/ay5qcGc"
  ];
  int imageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Toggle Color"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Image.network(players[imageIndex]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (imageIndex < players.length - 1) {
            imageIndex++;
          } else {
            imageIndex = 0;
          }
          setState(() {});
        },
        child: const Icon(Icons.loop),
      ),
    );
  }
}
