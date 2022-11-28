import 'package:flutter/material.dart';
import 'package:flutter_movie_app/widgets/movies_nav_bar.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text('Details'),
      ),
      bottomNavigationBar: MoviesNavBar(),
    );
  }
}
