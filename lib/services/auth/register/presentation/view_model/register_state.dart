part of 'register_cubit.dart';

abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class RegisterUserLoading extends RegisterState {}

class RegisterUserFailure extends RegisterState {
  final String errMessage;

  RegisterUserFailure(this.errMessage);
}

class RegisterUserSuccess extends RegisterState {}
