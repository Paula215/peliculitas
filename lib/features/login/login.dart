import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/features/login/cubit/login_cubit.dart';
import 'package:flutter_movie_app/widgets/button.dart';
import 'package:flutter_movie_app/widgets/text_box.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginCubitState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 90,
                        ),
                        Image.asset('assets/planet.png'),
                        const SizedBox(
                          height: 40,
                        ),
                        const Cajita(
                          label: 'Email',
                          placeholder: 'example@gmail.com',
                          email: true,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Cajita(
                          label: 'Password',
                          placeholder: '',
                          invisible: true,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ButtonL(
                            onTap: () {
                              Navigator.pushNamed(context, 'home');
                            },
                            label: 'continue'),
                        const SizedBox(
                          height: 40,
                        ),
                        ButtonL(
                            onTap: () {
                              Navigator.pushNamed(context, 'register');
                            },
                            label: 'Registrate'),
                      ]),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
