import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:e_commerce_test/domain/core/api_endpoints.dart';
import 'package:e_commerce_test/domain/orders/model/order_model.dart';
import 'package:e_commerce_test/domain/orders/order_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OrderService)
class OrderServiceimpl implements OrderService {
  OrderServiceimpl();
  @override
  Future<OrderResponse> placeOrder(OrderRequest orderRequest) async {
    try {
      final response = await Dio(BaseOptions()).post(
        ApiEndpoints.placeOrder,
        data: orderRequest.toJson(),
        options: Options(
          contentType: Headers.jsonContentType,
        ),
      );

      if (response.statusCode == 200) {
        log(response.statusCode.toString());
        return OrderResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to place order: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to place order: $e');
    }
  }
}
