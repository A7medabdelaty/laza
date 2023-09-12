import 'package:dartz/dartz.dart';
import 'package:laza/core/failures/failure.dart';

abstract class ForgetPasswordRepo {
  Future<Either<Failure, void>> sendVerificationEmail(email);
}
