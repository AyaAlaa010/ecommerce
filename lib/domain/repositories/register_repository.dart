import 'package:dartz/dartz.dart';
import 'package:ecommerce/domain/entities/register_data_request.dart';

import '../../core/failure/failure.dart';

abstract class RegisterRepository {
  Future<Either<Failure, bool>> register(
      RegisterDataRequest registerDataRequest);
}
