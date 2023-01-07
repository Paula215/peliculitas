part of 'login_cubit.dart';

enum LoginStatus {
  initial,
  loading,
  error,
  sucessfull,
  register,
}

class LoginCubitState extends Equatable {
  final LoginStatus status;
  const LoginCubitState.initial() : status = LoginStatus.initial;
  const LoginCubitState.loading() : status = LoginStatus.loading;
  const LoginCubitState.error() : status = LoginStatus.error;
  const LoginCubitState.sucessfull() : status = LoginStatus.sucessfull;

  @override
  List<Object> get props => [status];
}
