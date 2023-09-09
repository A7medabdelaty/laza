import 'package:firebase_auth/firebase_auth.dart';
import 'package:laza/core/failures/failure.dart';

class FirebaseFailure extends Failure {
  FirebaseFailure(super.errMessage);

  factory FirebaseFailure.fromAuthException(FirebaseAuthException exception) {
    String message = '';
    if (exception.code == 'network-request-failed') {
      message = 'No Internet Connection';
    } else if (exception.code == "wrong-password") {
      message = 'Please Enter correct password';
    } else if (exception.code == 'user-not-found') {
      message = 'Email not found';
    } else if (exception.code == 'too-many-requests') {
      message = 'Too many attempts please try later';
    } else if (exception.code == 'weak-password') {
      message = 'The password provided is too weak.';
    } else if (exception.code == 'email-already-in-use') {
      message = 'The account already exists for that email.';
    } else {
      message = 'Something went wrong, please try later!!';
    }
    return FirebaseFailure(message);
  }
}
