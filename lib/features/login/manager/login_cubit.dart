import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/core/failure/server_failure.dart';
import 'package:ecommerce/core/services/web_serivces.dart';
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


  Future <bool> login(String email, String password) async{
    WebServices webServices=WebServices();
    loginDataSource=LoginDataSourceImpl(webServices.freeDio);
    loginRepository=LoginRepositoryImp(loginDataSource);
    loginUseCase=LoginUseCase(loginRepository);
    emit(LoadingLogin());

    final result=  await  loginUseCase.execute(email, password);
    return  result.fold((fail) {
       var error= fail as ServerFailure;
       emit(ErrorLogin());
       return  Future.value(false);
     }, (data) {
       emit(SuccessLogin());
       return Future.value(true);
     });
}




}