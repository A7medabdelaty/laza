import 'package:firebase_auth/firebase_auth.dart';
import 'package:laza/core/failures/failure.dart';

class FirebaseFailure extends Failure{
  FirebaseFailure(super.errMessage);

  factory FirebaseFailure.fromAuthException(FirebaseAuthException exception){
    return FirebaseFailure("${exception.message}");
  }
}