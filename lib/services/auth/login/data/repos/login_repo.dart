import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:laza/core/failures/failure.dart';

abstract class LoginRepo{
  Future<Either<Failure,UserCredential>> signInWithEmail(String emailAddress, String password);
}