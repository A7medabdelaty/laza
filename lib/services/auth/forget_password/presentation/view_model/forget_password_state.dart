part of 'forget_password_cubit.dart';

abstract class ForgetPasswordState {}

class ForgetPasswordInitial extends ForgetPasswordState {}

class SendForgetPasswordLoading extends ForgetPasswordState {}

class SendForgetPasswordSuccess extends ForgetPasswordState {}

class SendForgetPasswordFailure extends ForgetPasswordState {
  final String errMessage;

  SendForgetPasswordFailure(this.errMessage);
}
