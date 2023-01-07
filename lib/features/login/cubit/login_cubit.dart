import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'login_cubit_state.dart';

class LoginCubit extends Cubit<LoginCubitState> {
  LoginCubit() : super(LoginCubitState.loging()) {
    logInWithCredentials();
  }
  Future<void> setloging(String email, String password) async {
    emit(state.copyWith(message: 'loging'));
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
  }

  void logInWithCredentials() async {
    final repost = await _auth.signInWithEmailAndPassword(
        email: 'paula@gmail.com', password: '1234');
    print(repost);
  }
}
