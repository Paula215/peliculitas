part of 'register_cubit.dart';

enum RegisterStatus {
  initial,
  loading,
  error,
  sucessfull,
  register,
}

class RegisterState extends Equatable {
  final RegisterStatus status;
  const RegisterState.initial() : status = RegisterStatus.initial;
  const RegisterState.loading() : status = RegisterStatus.loading;
  const RegisterState.error() : status = RegisterStatus.error;
  const RegisterState.sucessfull() : status = RegisterStatus.sucessfull;
  const RegisterState.register() : status = RegisterStatus.register;

  @override
  List<Object> get props => [status];
}
