import 'package:clean_arch/features/user/domain/entities/user_intity.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

abstract class UserRepository {
  Future<Either<Failure,UserIntity>> getUsers();
}
