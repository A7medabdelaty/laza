import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/services/auth/forget_password/data/repos/forget_password_repo.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit(this.forgetPasswordRepo) : super(ForgetPasswordInitial());
  final ForgetPasswordRepo forgetPasswordRepo;

  Future<void> sendResetPasswordEmail({email}) async {
    emit(SendForgetPasswordLoading());
    var result = await forgetPasswordRepo.sendVerificationEmail(email);
    result.fold((failure) {
      emit(SendForgetPasswordFailure(failure.errMessage));
    }, (result) {
      emit(SendForgetPasswordSuccess());
    });
  }
}
