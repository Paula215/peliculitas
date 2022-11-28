import 'package:flutter/material.dart';
import 'package:flutter_movie_app/features/home/presentation/views/widgets/header_home.dart';
import 'package:flutter_movie_app/widgets/movies_nav_bar.dart';
import 'package:flutter_movie_app/features/home/presentation/views/widgets/new_movies.dart';
import 'package:flutter_movie_app/features/home/presentation/views/widgets/search_home.dart';
import 'package:flutter_movie_app/features/home/presentation/views/widgets/upcoming_movies.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderHome(),
              SearchHome(),
              SizedBox(height: 30),
              UpcomingMovies(),
              SizedBox(height: 30),
              NewMovies(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MoviesNavBar(),
    );
  }
}
