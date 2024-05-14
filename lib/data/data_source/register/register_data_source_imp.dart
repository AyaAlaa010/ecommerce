import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:ecommerce/data/data_source/register/register_data_source.dart';
import 'package:ecommerce/domain/entities/register_data_request.dart';

class RegisterDataSourceImp extends RegisterDataSource{
  Dio dio;

  RegisterDataSourceImp({required this.dio});
  
  @override
  Future<Response> register(RegisterDataRequest registerDataRequest) async  {
    return await dio.post("/api/v1/auth/signup",data: {
      "name":registerDataRequest.name,
      "email":registerDataRequest.email,
      "password":registerDataRequest.password,
      "rePassword":registerDataRequest.rePassword,
      "phone":registerDataRequest.phone
    }) ;
  }
  
  
  
  
  
  
}