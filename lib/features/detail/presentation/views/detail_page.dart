import 'package:flutter/material.dart';
import 'package:flutter_movie_app/features/home/presentation/views/widgets/buttons.dart';
import 'package:flutter_movie_app/widgets/movies_nav_bar.dart';

import '../../../../widgets/details_header.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10),
            const DetailsHeader(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buttons(
                  icon: Icons.add,
                  onTap: () {},
                ),
                Buttons(
                  icon: Icons.favorite_border,
                  onTap: () {},
                ),
                Buttons(
                  icon: Icons.download,
                  onTap: () {},
                ),
                Buttons(
                  icon: Icons.share,
                  onTap: () {},
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: MoviesNavBar(),
    );
  }
}
