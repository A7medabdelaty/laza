import 'package:dartz/dartz.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'package:laza/core/failures/failure.dart';
import 'package:laza/core/failures/firebase_failures.dart';
import 'package:laza/core/failures/general_failures.dart';
import 'package:laza/core/utils/services/auth_service.dart';

import 'register_repo.dart';

class RegisterRepoImpl extends RegisterRepo {
  RegisterRepoImpl(this.authService);

  AuthService authService;

  @override
  Future<Either<Failure, UserCredential>> createUser({
    required String email,
    required String password,
  }) async {
    try {
      return Right(await authService.createUserWithEmail(email, password));
    } on FirebaseAuthException catch (e) {
      return Left(FirebaseFailure.fromAuthException(e));
    } catch (e) {
      return Left(GeneralFailures(e.toString()));
    }
  }
}
