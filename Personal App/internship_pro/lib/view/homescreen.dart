import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:internship_pro/Widget/moivecards.dart';
import 'package:internship_pro/model/moivesmodel.dart';

import 'moivesdetails.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  TextEditingController searchController = TextEditingController();
  List<Movie> movies = [];
  bool isLoading = false;

  // Function to search movies by title
  searchMovies(String query) async {
    if (query.isEmpty) return;

    setState(() {
      isLoading = true;
    });

    Uri url = Uri.parse('https://www.omdbapi.com/?s=$query&apikey=84527e76');
    http.Response response = await http.get(url);

    var jsonData = json.decode(response.body);

    if (jsonData['Response'] == 'True') {
      setState(() {
        // ✅ Correct way to parse JSON and add multiple movies
        movies.addAll((jsonData['Search'] as List)
            .map((movie) => Movie.fromJson(movie))
            .toList());
      });
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Movie Search",
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 7,
              vertical: 10.0,
            ),
            child: TextField(
              onSubmitted: (value) {
                searchMovies(value);
              },
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search Movie...",
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : movies.isEmpty
                    ? const Center(
                        child: Text(
                          "No movies found!",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      )
                    : ListView.builder(
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          var movie = movies[index]; // ✅ Fixed Indexing
                          return GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return Moivesdetails(movie: movie);
                                }));
                              },
                              child: MovieCard(movie: movie));
                        },
                      ),
          ),
        ],
      ),
    );
  }
}
