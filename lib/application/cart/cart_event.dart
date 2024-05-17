part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.onAddToCart(
      CartModel cartItem, BuildContext context) = OnAddToCart;
  const factory CartEvent.onRemovefromCart(String productId) = onRemovefromCart;
  const factory CartEvent.loadCart() = LoadCart;
  const factory CartEvent.clearCart() = ClearCart;
  const factory CartEvent.checkout() = Checkout;
  const factory CartEvent.incrementCartItem(CartModel cartItem) =
      IncrementCartItem;
  const factory CartEvent.decrementCartItem(CartModel cartItem) =
      DecrementCartItem;
}
