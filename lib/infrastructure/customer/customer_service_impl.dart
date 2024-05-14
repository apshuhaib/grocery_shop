import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:e_commerce_test/domain/core/api_endpoints.dart';
import 'package:e_commerce_test/domain/core/failures/main_failure.dart';
import 'package:e_commerce_test/domain/customer/customer_service.dart';
import 'package:e_commerce_test/domain/customer/model/customer_response.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CustomerService)
class CustomerServiceimpl implements CustomerService {
  @override
  Future<Either<MainFailure, CustomerResponse>> getAllCustomer() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndpoints.allCustomers);
      // log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = CustomerResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, CustomerResponse>> searchCustomer(
      {required String customerQuery}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndpoints.searchCustomer,
        queryParameters: {'search_query': customerQuery},
      );
      log('serach qeuryyyyy${response.data.toString()}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = CustomerResponse.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
