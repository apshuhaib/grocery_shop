import 'package:e_commerce_test/domain/core/failures/main_failure.dart';
import 'package:e_commerce_test/domain/products/model/product_response.dart';
import 'package:dartz/dartz.dart';

abstract class ProductService {
  Future<Either<MainFailure, ProductResponse>> getallProducts();
}
