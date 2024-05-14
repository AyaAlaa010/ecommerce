import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/entities/register_data_request.dart';
import 'package:ecommerce/domain/repositories/register_repository.dart';

import '../../core/failure/failure.dart';

class RegisterUseCase{

  RegisterRepository registerRepository;

  RegisterUseCase({required this.registerRepository});

  Future<Either<Failure,bool>> execute(RegisterDataRequest registerDataRequest)async {
    return await registerRepository.register(registerDataRequest);
}





}