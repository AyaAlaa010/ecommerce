import 'package:dio/dio.dart';
import 'package:ecommerce/domain/entities/register_data_request.dart';

abstract class RegisterDataSource{
  Future<Response> register(RegisterDataRequest registerDataRequest);
}