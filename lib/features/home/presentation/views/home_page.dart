import 'package:flutter/material.dart';
import 'package:flutter_movie_app/features/home/presentation/views/widgets/card_swiper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: const Text(
          'Estrenos',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Calibri',
          ),
        ),
        elevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: Column(
        children: const [
          CardSwipper(),
        ],
      ),
    );
  }
}
