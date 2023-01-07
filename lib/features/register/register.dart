import 'package:flutter/material.dart';
import 'package:flutter_movie_app/widgets/button.dart';
import 'package:flutter_movie_app/widgets/text_box.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 90),
                  Image.asset(
                    'assets/planet.png',
                    height: 100,
                    width: 100,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    'R E G I S T E R',
                    style: TextStyle(color: Color.fromARGB(233, 231, 228, 228)),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Cajita(
                    label: 'Insert name',
                    placeholder: 'name',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Cajita(
                    label: 'Insert email',
                    placeholder: 'example@gmail.com',
                    email: true,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Cajita(
                    label: 'Insert password',
                    placeholder: '',
                    invisible: true,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  ButtonL(
                      onTap: () {
                        Navigator.pushNamed(context, 'home');
                      },
                      label: 'continuar'),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonL(
                      onTap: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      label: 'volver'),
                ]),
          ),
        ),
      ),
    );
  }
}
