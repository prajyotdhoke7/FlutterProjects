import 'package:flutter/material.dart';

import '../model/moivesmodel.dart';

class Moivesdetails extends StatefulWidget {
  final Movie movie;
  const Moivesdetails({super.key, required this.movie});

  @override
  State<Moivesdetails> createState() => _MoivesdetailsState();
}

class _MoivesdetailsState extends State<Moivesdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          widget.movie.title,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 350,
              width: double.infinity,
              child: Image.network(
                widget.movie.poster,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: 8,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          title: Text("🕒 Runtime:${widget.movie.runtime}")),
                      _divider(),
                      ListTile(
                          title: Text("🌎 Language:${widget.movie.language}")),
                      _divider(),
                      ListTile(title: Text("📅 Year:${widget.movie.year}")),
                      _divider(),
                      ListTile(
                          title:
                              Text("⭐ IMDB Rating:${widget.movie.imdbRating}")),
                      _divider(),
                      ListTile(title: Text("🎭 Genre:${widget.movie.genre}")),
                      _divider(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _divider() {
    return Divider(color: Colors.grey[400], thickness: 0.8);
  }
}
