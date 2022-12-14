import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_cubit_state.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit() : super(const LoginCubitState.initial());

  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> logInWithCredentials(
      {required String email, required String password}) async {
    try {
      emit(const LoginCubitState.loading());
      final response = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      print(response);
      emit(const LoginCubitState.sucessfull());
    } on FirebaseAuthException catch (e) {
      print('ERROR');
      emit(const LoginCubitState.error());
    }
  }
}
