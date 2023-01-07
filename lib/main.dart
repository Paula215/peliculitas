import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/features/detail/presentation/views/detail_page.dart';
import 'package:flutter_movie_app/features/home/presentation/views/home_page.dart';
import 'package:flutter_movie_app/features/login/login.dart';
import 'package:flutter_movie_app/features/register/register.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      initialRoute: 'login',
      routes: {
        'home': (_) => const HomePage(),
        'details': (_) => const DetailsPage(),
        'login': (_) => const LoginPage(),
        'register': (_) => const RegisterPage(),
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0F111D),
        ),
      ),
    );
  }
}
