import 'package:e_commerce_test/domain/cart/cart_service.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CartService)
class CartServiceImpl implements CartService {
  Box<CartModel>? _cartBox;

  @override
  Future<void> openBox() async {
    _cartBox = await Hive.openBox('cartBox');
  }

  @override
  Future<void> closeBox() async {
    await _cartBox!.close();
  }

  @override
  Future<void> addToCart(CartModel item) async {
    await _cartBox!.put(item.productId, item);
  }

  @override
  Future<void> removeFromCart(String productId) async {
    await _cartBox!.delete(productId);
  }

  @override
  List<CartModel> getCartItems() {
    return _cartBox!.values.toList();
  }

  @override
  double getTotalPrice() {
    double totalPrice = 0;
    _cartBox!.values.forEach((item) {
      totalPrice += item.price * item.quantity;
    });
    return totalPrice;
  }
}
