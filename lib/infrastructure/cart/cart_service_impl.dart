import 'package:e_commerce_test/domain/cart/cart_service.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: CartService)
class CartServiceimpl implements CartService {
  static const String _boxName = 'grocerCartBox';
  static const String _cartCountKey = 'cartCount';
  late SharedPreferences _prefs;
  Box<CartModel>? _cartBox;
//open box and register adapter
  @override
  Future<void> openBox() async {
    await Hive.initFlutter();
    Hive.registerAdapter(CartModelAdapter());
    _cartBox = await Hive.openBox<CartModel>(_boxName);
    _prefs = await SharedPreferences.getInstance();
  }

//close box
  @override
  Future<void> closeBox() async {
    await _cartBox?.close();
  }

//add to cart
  @override
  Future<void> addToCart(CartModel item) async {
    await _cartBox?.add(item);
  }

  //remove from cart
  @override
  Future<void> removeFromCart(String productId) async {
    final items =
        _cartBox?.values.where((item) => item.productId == productId).toList();
    if (items != null && items.isNotEmpty) {
      await items.first.delete();
    }
  }

//get
  @override
  List<CartModel> getCartItems() {
    return _cartBox?.values.toList() ?? [];
  }

  //increemnt
  @override
  Future<void> increementCartItem(CartModel item, String productId) async {
    final cartItem = _cartBox?.values
        .firstWhere((element) => element.productId == productId);
    if (cartItem != null) {
      cartItem.quantity += 1;
      await cartItem.save();
    }
  }

  //decreement
  @override
  Future<void> decreementCartItem(CartModel item, String productId) async {
    final cartItem = _cartBox?.values
        .firstWhere((element) => element.productId == productId);
    if (cartItem != null && cartItem.quantity > 1) {
      cartItem.quantity -= 1;
      await cartItem.save();
    }
  }

//cartcount
  @override
  Future<void> cartCount(CartModel item, int quantity) async {
    final cartItem = _cartBox?.values
        .firstWhere((element) => element.productId == item.productId);
    if (cartItem != null) {
      cartItem.quantity = quantity;
      await cartItem.save();
    }
  }

//total price
  @override
  double getTotalPrice() {
    return _cartBox?.values
            .fold(0, (sum, item) => sum! + (item.price * item.quantity)) ??
        0.0;
  }

//clear cart
  @override
  Future<void> clearCart() async {
    await _cartBox?.clear();
    updateCartCountSharedPrefs(0);
  }

//sharedprefs
  @override
  Future<void> updateCartCountSharedPrefs(int count) async {
    await _prefs.setInt(_cartCountKey, count);
  }

  @override
  Future<int> getCartCountSharefPrefs() async {
    return _prefs.getInt(_cartCountKey) ?? 0;
  }
}
