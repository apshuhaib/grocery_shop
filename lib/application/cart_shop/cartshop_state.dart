part of 'cartshop_bloc.dart';

@freezed
class CartshopState with _$CartshopState {
  const factory CartshopState({
    required List<CartModel> cartItems,
    required double totalPrice,
    required bool isLoading,
    required bool isError,
    required String errorMessage,
    required int cartCount,
  }) = _CartshopState;
  factory CartshopState.initial() => const CartshopState(
      cartItems: [],
      totalPrice: 0.0,
      isLoading: false,
      isError: false,
      cartCount: 0,
      errorMessage: '');
}
