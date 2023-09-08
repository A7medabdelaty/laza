part of 'get_started_cubit.dart';

abstract class GetStartedState {}

class GetStartedInitial extends GetStartedState {}

class GetStartedSignInLoading extends GetStartedState {}

class GetStartedSignInSuccess extends GetStartedState {}

class GetStartedSignInFailure extends GetStartedState {
  final String errMessage;

  GetStartedSignInFailure(this.errMessage);
}
