import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/data/data_source/login/login_data_source.dart';
import 'package:ecommerce/data/data_source/login/login_data_source_imp.dart';
import 'package:ecommerce/data/repository_imp/login_repository_imp.dart';
import 'package:ecommerce/domain/repositories/LoginRepository.dart';
import 'package:ecommerce/domain/use_cases/login_use_case.dart';
import 'package:ecommerce/features/login/manager/login_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/failure/failure.dart';

class LoginCubit extends Cubit<LoginStates>{
  LoginCubit():super (LoadingLogin());


  late LoginUseCase loginUseCase;
  late LoginRepository loginRepository;
  late LoginDataSource loginDataSource;
  late Dio dio;


  Future <Either<Failure,bool>> login(String email, String password) async{
    dio=Dio();
    loginDataSource=LoginDataSourceImpl(dio);
    loginRepository=LoginRepositoryImp(loginDataSource);
    loginUseCase=LoginUseCase(loginRepository);


    return await  loginUseCase.execute(email, password);


}}