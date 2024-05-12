import 'package:dartz/dartz.dart';

import '../../core/failure/failure.dart';
import '../repositories/LoginRepository.dart';

class LoginUseCase {
  LoginRepository loginRepository;
  LoginUseCase(this.loginRepository);

  Future<Either<Failure, bool>> execute(String email, String password) async {
    return await loginRepository.login(email, password);
  }
}
