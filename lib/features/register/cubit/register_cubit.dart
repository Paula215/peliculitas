import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState.initial());

  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> registerWithCredentials(
      {required String email, required String password}) async {
    try {
      emit(const RegisterState.loading());
      final response = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      print(response);
      emit(const RegisterState.sucessfull());
    } on FirebaseAuthException catch (e) {
      print('ERROR');
      emit(const RegisterState.error());
    }
  }
}
