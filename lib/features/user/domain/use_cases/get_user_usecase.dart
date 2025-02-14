import 'package:clean_arch/core/params/params.dart';
import 'package:clean_arch/features/user/domain/entities/user_entity.dart';
import 'package:clean_arch/features/user/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';

class GetUserUsecase {
  final UserRepository _userRepository;

  GetUserUsecase(this._userRepository);
  Future<Either<Failure, UserEntity>> call(UserParams params) {
    return _userRepository.getUsers(params);
  }
}
