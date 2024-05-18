import 'package:e_commerce_test/domain/cart/cart_service.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cartshop_event.dart';
part 'cartshop_state.dart';
part 'cartshop_bloc.freezed.dart';

@injectable
class CartshopBloc extends Bloc<CartshopEvent, CartshopState> {
  final CartService _cartService;

  CartshopBloc(this._cartService) : super(CartshopState.initial()) {
    //add to cart
    on<AddToCart>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false, errorMessage: ''));
      try {
        await _cartService.addToCart(event.item);
        emit(state.copyWith(isLoading: false));
        add(const CartshopEvent.loadCartItems());
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, isError: true, errorMessage: e.toString()));
      }
    });

    //load cart items

    on<LoadCartItems>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false, errorMessage: ''));
      try {
        final cartItems = _cartService.getCartItems();
        final totalPrice = _cartService.getTotalPrice();
        final cartCount = await _cartService.getCartCountSharefPrefs();
        emit(state.copyWith(
            cartItems: cartItems,
            totalPrice: totalPrice,
            isLoading: false,
            cartCount: cartCount));
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, isError: true, errorMessage: e.toString()));
      }
    });

    // increement
    on<IncrementCartItem>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false, errorMessage: ''));
      try {
        await _cartService.increementCartItem(event.item, event.productId);
        emit(state.copyWith(isLoading: false));
        add(const CartshopEvent.loadCartItems());
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, isError: true, errorMessage: e.toString()));
      }
    });

//decreement
    on<DecrementCartItem>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false, errorMessage: ''));
      try {
        await _cartService.decreementCartItem(event.item, event.productId);
        emit(state.copyWith(isLoading: false));
        add(const CartshopEvent.loadCartItems());
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, isError: true, errorMessage: e.toString()));
      }
    });

    on<RemoveFromCart>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false, errorMessage: ''));
      try {
        await _cartService.removeFromCart(event.productId);
        emit(state.copyWith(isLoading: false));
        add(const CartshopEvent.loadCartItems());
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, isError: true, errorMessage: e.toString()));
      }
    });

    on<CartCount>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false, errorMessage: ''));
      try {
        await _cartService.cartCount(event.item, event.quantity);
        emit(state.copyWith(isLoading: false));
        add(const CartshopEvent.loadCartItems());
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, isError: true, errorMessage: e.toString()));
      }
    });

    //clear cart
    on<ClearCart>((event, emit) async {
      emit(state.copyWith(isLoading: true, isError: false, errorMessage: ''));
      try {
        await _cartService.clearCart();
        emit(state.copyWith(isLoading: false));
        add(const CartshopEvent.loadCartItems());
      } catch (e) {
        emit(state.copyWith(
            isLoading: false, isError: true, errorMessage: e.toString()));
      }
    });
  }
}
