part of 'login_cubit.dart';

class LoginCubitState extends Equatable {
  const LoginCubitState({required this.message});
  final String message;
  factory LoginCubitState.loging() => const LoginCubitState(message: 'wait');
  factory LoginCubitState.error() => const LoginCubitState(message: 'no');
  factory LoginCubitState.sucessfull() => const LoginCubitState(message: 'ok');

  @override
  List<Object> get props => [message];

  LoginCubitState copyWith({
    String? message,
  }) {
    return LoginCubitState(
      message: message ?? this.message,
    );
  }
}
