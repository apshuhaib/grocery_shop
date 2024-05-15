part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.onAddToCart(CartModel cartItem) = OnAddToCart;
  const factory CartEvent.onRemovefromCart(String productId) = onRemovefromCart;
  const factory CartEvent.loadCart() = LoadCart;
  const factory CartEvent.clearCart() = ClearCart;
  const factory CartEvent.updateCartItem(CartModel updatedItem) =
      UpdateCartItem;
  const factory CartEvent.checkout() = Checkout;
  const factory CartEvent.applyCoupon(String couponCode) = ApplyCoupon;
  const factory CartEvent.removeAllCoupons() = RemoveAllCoupons;
  const factory CartEvent.incrementCartItem(CartModel cartItem) =
      IncrementCartItem;
  const factory CartEvent.decrementCartItem(CartModel cartItem) =
      DecrementCartItem;
  const factory CartEvent.moveToWishlist(CartModel cartItem) = MoveToWishlist;
  const factory CartEvent.syncCart() = SyncCart;
}
