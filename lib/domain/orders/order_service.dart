import 'package:e_commerce_test/domain/orders/model/order_model.dart';

abstract class OrderService {
  Future<OrderResponse> placeOrder(OrderRequest orderRequest);
}
