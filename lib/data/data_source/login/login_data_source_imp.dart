import 'package:dio/dio.dart';
import 'package:dio/src/response.dart';
import 'package:ecommerce/data/data_source/login/login_data_source.dart';

class LoginDataSourceImpl extends LoginDataSource{
  
   Dio dio;
   
   LoginDataSourceImpl(this.dio);
  @override
  Future<Response> login(String email, String password)  async {
    return dio.post("/api/v1/auth/signin",data: {"email": email,"password":password});
  }
  
  
  
}