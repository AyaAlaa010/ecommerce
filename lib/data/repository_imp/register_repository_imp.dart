import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/core/failure/server_failure.dart';
import 'package:ecommerce/data/data_source/register/register_data_source.dart';
import 'package:ecommerce/domain/entities/register_data_request.dart';
import 'package:ecommerce/domain/repositories/register_repository.dart';

class RegisterRepositorImp extends RegisterRepository {
  RegisterDataSource registerDataSource;

  RegisterRepositorImp({required this.registerDataSource});

  @override
  Future<Either<Failure, bool>> register(
      RegisterDataRequest registerDataRequest) async {
    var response = await registerDataSource.register(registerDataRequest);
    try {
      if (response.statusCode == 201 ) {
        return const Right(true);
      }

      else if (response.statusCode == 401) {
        return Left(ServerFailure(
            statusCode: response.statusCode.toString(),
            message: response.data["message"],
            statusMsg: response.data["statusMsg"]));
      }
      else {
        return Left(ServerFailure(
            statusCode: response.statusCode.toString(),
            message: response.data["message"],
            statusMsg: response.data["statusMsg"]));
      }
    } on DioException catch (dioException) {
      return Left(ServerFailure(
          statusCode: response.statusCode.toString(),
          message: response.data["message"],
          statusMsg: response.data["statusMsg"]));
    }
  }
}
