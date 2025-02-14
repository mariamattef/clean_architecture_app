import 'package:clean_arch/core/params/params.dart';
import 'package:clean_arch/features/user/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUsers(UserParams params);
}
