import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:laza/core/failures/failure.dart';

abstract class RegisterRepo {
  Future<Either<Failure, UserCredential>> createUser({
    required String email,
    required String password,
  });
}
