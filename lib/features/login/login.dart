import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_movie_app/features/login/cubit/login_cubit.dart';
import 'package:flutter_movie_app/widgets/button.dart';
import 'package:flutter_movie_app/widgets/text_box.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginCubitState>(
        builder: (context, state) {
          return Stack(children: [
            Scaffold(
              backgroundColor: Colors.black,
              body: SingleChildScrollView(
                child: SafeArea(
                  child: Center(
                    child: BlocListener<LoginCubit, LoginCubitState>(
                      listener: (context, state) {
                        if (state.status == LoginStatus.sucessfull) {
                          print('OLAAAAA');
                          Navigator.pushNamed(context, 'home');
                        }
                      },
                      child: Form(
                        key: formKey,
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
                              Cajita(
                                controller: emailController,
                                label: 'Email',
                                placeholder: 'example@gmail.com',
                                email: true,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Cajita(
                                controller: passwordController,
                                label: 'Password',
                                placeholder: '',
                                invisible: true,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              ButtonL(
                                  onTap: () {
                                    if (formKey.currentState!.validate()) {
                                      context
                                          .read<LoginCubit>()
                                          .logInWithCredentials(
                                              email: emailController.text,
                                              password:
                                                  passwordController.text);
                                    }
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
                ),
              ),
            ),
            if (state.status == LoginStatus.loading)
              const Center(child: CircularProgressIndicator()),
          ]);
        },
      ),
    );
  }
}
