import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_test/domain/core/api_endpoints.dart';
import 'package:e_commerce_test/domain/core/failures/main_failure.dart';
import 'package:e_commerce_test/domain/products/model/product_response.dart';
import 'package:e_commerce_test/domain/products/product_service.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: ProductService)
class ProductServiceimpl implements ProductService {
  @override
  Future<Either<MainFailure, ProductResponse>> getallProducts() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndpoints.products);
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = ProductResponse.fromJson(response.data);
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
