import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/core/failure/server_failure.dart';
import 'package:ecommerce/data/data_source/login/login_data_source.dart';
import 'package:ecommerce/domain/repositories/LoginRepository.dart';

class LoginRepositoryImp extends LoginRepository {
  LoginDataSource loginDataSource;
  LoginRepositoryImp(this.loginDataSource);

  @override
  Future<Either<Failure, bool>> login(String email, String password) async {
    try {
      final response = await loginDataSource.login(email, password);
      if (response.statusCode == 200) {
        return const Right(true);
      } else if (response.statusCode == 401) {
        return Left(ServerFailure(
            statusCode: response.statusCode.toString(),
            message: response.data["message"],
            statusMsg: response.data["statusMsg"]));
      } else {
        return Left(ServerFailure(
            statusCode: response.statusCode.toString(),
            message: response.data["message"],
            statusMsg: response.data["statusMsg"]

        ));
      }
    } on DioException catch (dioException) {
      return Left(ServerFailure(
          statusCode: dioException.response!.statusCode.toString(),
          message: dioException.response!.data["message"],
          //statusMsg: dioException.response!.data["statusMsg"]
      ));
    }
  }
}
