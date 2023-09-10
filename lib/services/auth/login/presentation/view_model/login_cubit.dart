import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/services/auth/login/data/repos/login_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());
  final LoginRepo loginRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> userLoginWithEmail() async {
    emit(LoginLoading());
    var result = await loginRepo.signInWithEmail(
      emailController.text,
      passwordController.text,
    );
    result.fold((failure) {
      emit(LoginFailure(failure.errMessage));
    }, (userCredential) {
      emit(LoginSuccess());
    });
  }
}
