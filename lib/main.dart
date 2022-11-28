import 'package:flutter/material.dart';
import 'package:flutter_movie_app/features/detail/presentation/views/detail_page.dart';
import 'package:flutter_movie_app/features/home/presentation/views/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomePage(),
        'details': (_) => const DetailsPage(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0F111D),
        ),
      ),
    );
  }
}
