part of 'cartshop_bloc.dart';

@freezed
class CartshopEvent with _$CartshopEvent {
  const factory CartshopEvent.addToCart(CartModel item) = AddToCart;
  const factory CartshopEvent.removeFromCart(String productId) = RemoveFromCart;
  const factory CartshopEvent.incrementCartItem(
      CartModel item, String productId) = IncrementCartItem;
  const factory CartshopEvent.decrementCartItem(
      CartModel item, String productId) = DecrementCartItem;
  const factory CartshopEvent.cartCount(CartModel item, int quantity) =
      CartCount;
  const factory CartshopEvent.loadCartItems() = LoadCartItems;
  const factory CartshopEvent.clearCart() = ClearCart;
}
