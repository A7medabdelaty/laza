import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:laza/core/failures/failure.dart';

abstract class GetStartedRepo{
  Future<Either<Failure, UserCredential>> googleSignIn();
}