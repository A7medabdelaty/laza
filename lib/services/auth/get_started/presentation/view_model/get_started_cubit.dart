import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/services/auth/get_started/data/repos/get_started_repo.dart';

part 'get_started_state.dart';

class GetStartedCubit extends Cubit<GetStartedState> {
  GetStartedCubit(this.getStartedRepo) : super(GetStartedInitial());
  final GetStartedRepo getStartedRepo;

  Future<void> googleSignIn() async {
    emit(GetStartedGoogleSignInLoading());
    var result = await getStartedRepo.googleSignIn();
    result.fold(
      (failure) {
        emit(GetStartedGoogleSignInFailure(failure.errMessage));
      },
      (r) {
        emit(GetStartedGoogleSignInSuccess());
      },
    );
  }
}
