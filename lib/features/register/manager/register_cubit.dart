import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/core/failure/failure.dart';
import 'package:ecommerce/core/failure/server_failure.dart';
import 'package:ecommerce/core/services/web_serivces.dart';
import 'package:ecommerce/data/data_source/register/register_data_source.dart';
import 'package:ecommerce/data/data_source/register/register_data_source_imp.dart';
import 'package:ecommerce/data/repository_imp/register_repository_imp.dart';
import 'package:ecommerce/domain/entities/register_data_request.dart';
import 'package:ecommerce/domain/repositories/register_repository.dart';
import 'package:ecommerce/domain/use_cases/register_use_case.dart';
import 'package:ecommerce/features/register/manager/register_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class RegisterCubit extends Cubit<RegisterStates>{


  RegisterCubit():super(LoadingRegisterState());
  late RegisterUseCase registerUseCase;
  late RegisterRepository registerRepository;
  late RegisterDataSource registerDataSource;
  late WebServices webServices;



  Future<bool> register(RegisterDataRequest registerDataRequest) async {
    webServices=WebServices();
    registerDataSource=RegisterDataSourceImp(dio: webServices.freeDio);
    registerRepository=RegisterRepositorImp(registerDataSource: registerDataSource);
    registerUseCase=RegisterUseCase(registerRepository: registerRepository);
    emit(LoadingRegisterState());
    final result= await registerUseCase.execute(registerDataRequest);

    return result.fold((fail) {
      emit(ErrorRegisterState());
      var error= fail as ServerFailure;
      print("========register ${ error.message}");
      return Future.value(false);
    }, (data) {
      emit(SuccessRegisterState());
      return Future.value(true);
    });


  }





}