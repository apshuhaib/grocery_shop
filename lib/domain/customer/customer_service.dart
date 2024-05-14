import 'package:dartz/dartz.dart';
import 'package:e_commerce_test/domain/core/failures/main_failure.dart';
import 'package:e_commerce_test/domain/customer/model/customer_response.dart';

abstract class CustomerService {
  Future<Either<MainFailure, CustomerResponse>> getAllCustomer();
  Future<Either<MainFailure, CustomerResponse>> searchCustomer({
    required String customerQuery,
  });
}
