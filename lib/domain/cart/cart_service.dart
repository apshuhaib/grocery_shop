import 'package:e_commerce_test/domain/cart/model/cart_model.dart';

abstract class CartService {
  Future<void> addToCart(CartModel item);
  Future<void> removeFromCart(String productId);
  List<CartModel> getCartItems();
  double getTotalPrice();
  Future<void> openBox();
  Future<void> closeBox();
}
