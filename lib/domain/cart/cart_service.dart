import 'package:e_commerce_test/domain/cart/model/cart_model.dart';

abstract class CartService {
  Future<void> addToCart(CartModel item);
  Future<void> removeFromCart(String productId);
  List<CartModel> getCartItems();
  Future<void> increementCartItem(CartModel item, String productId);
  Future<void> decreementCartItem(CartModel item, String productId);
  Future<void> cartCount(CartModel item, int quantity);
  double getTotalPrice();
  Future<void> openBox();
  Future<void> closeBox();
  Future<void> clearCart();
}
