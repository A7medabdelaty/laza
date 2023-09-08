part of 'get_started_cubit.dart';

abstract class GetStartedState {}

class GetStartedInitial extends GetStartedState {}

class GetStartedGoogleSignInLoading extends GetStartedState {}

class GetStartedGoogleSignInSuccess extends GetStartedState {}

class GetStartedGoogleSignInFailure extends GetStartedState {
  final String errMessage;

  GetStartedGoogleSignInFailure(this.errMessage);
}
