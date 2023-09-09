import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/services/auth/register/data/repos/register_repo.dart';
import 'package:laza/services/auth/register/data/user_model.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerRepo) : super(RegisterInitial());

  final RegisterRepo registerRepo;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  void formValidation(GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate()) {
      UserModel(
        usernameController.text,
        passwordController.text,
        emailController.text,
      );
      createUser(
        email: emailController.text,
        password: passwordController.text,
      );
    }
  }

  Future<void> createUser({required email, required password}) async {
    emit(RegisterUserLoading());
    var result =
        await registerRepo.createUser(email: email, password: password);
    result.fold((failure) {
      emit(RegisterUserFailure(failure.errMessage));
    }, (r) {
      emit(RegisterUserSuccess());
    });
  }
}
