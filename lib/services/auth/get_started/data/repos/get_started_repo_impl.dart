import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:laza/core/failures/failure.dart';
import 'package:laza/core/failures/firebase_failures.dart';
import 'package:laza/core/failures/general_failures.dart';
import 'package:laza/core/utils/services/auth_service.dart';

import 'get_started_repo.dart';

class GetStartedRepoImpl extends GetStartedRepo {
  GetStartedRepoImpl(this.authService);

  AuthService authService;

  @override
  Future<Either<Failure, UserCredential>> googleSignIn() async {
    try {
      return Right(await authService.signInWithGoogle());
    } on FirebaseException catch (e) {
      if (e is FirebaseAuthException) {
        return Left(
          FirebaseFailure.fromAuthException(e),
        );
      } else {
        return Left(
          FirebaseFailure('Something went wrong, code: ${e.code}'),
        );
      }
    } catch (e) {
      return Left(GeneralFailures('Something Went Wrong'));
    }
  }
}
