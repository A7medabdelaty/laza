import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:laza/core/failures/failure.dart';
import 'package:laza/core/failures/firebase_failures.dart';
import 'package:laza/core/failures/general_failures.dart';
import 'package:laza/core/utils/services/remote/auth_service.dart';
import 'package:laza/services/auth/forget_password/data/repos/forget_password_repo.dart';

class ForgetPasswordRepoImpl extends ForgetPasswordRepo {
  final AuthService authService;

  ForgetPasswordRepoImpl(this.authService);

  @override
  Future<Either<Failure, void>> sendVerificationEmail(email) async {
    try {
      return Right(await authService.sendVerificationEmail(email));
    } on FirebaseException catch (exception) {
      if (exception is FirebaseAuthException) {
        return Left(FirebaseFailure.fromAuthException(exception));
      } else {
        return Left(
            FirebaseFailure('Firebase exception, with code ${exception.code}'));
      }
    } catch (exception) {
      return Left(
          GeneralFailures('Something went wrong, please try again later'));
    }
  }
}
