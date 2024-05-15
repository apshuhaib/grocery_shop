import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_test/domain/cart/cart_service.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final CartService _cartService;
  CartBloc(this._cartService) : super(const _Initial()) {
    on<OnAddToCart>((event, emit) async {
      // try {
      //   await _cartService.addToCart(event.cartItem);
      //   final cartItems = _cartService.getCartItems();

      //   emit(CartState.loaded(cartItems));
      // } catch (_) {
      //   emit(const CartState.error());
      // }
      try {
        final _box = await Hive.openBox<CartModel>('cart');
        await _box.add(event.cartItem);
        final cartItems = _cartService.getCartItems();
        emit(CartState.loaded(cartItems));
      } catch (_) {
        emit(const CartState.error());
      }
    });

    on<LoadCart>((event, emit) async {
      try {
        final _box = await Hive.openBox<CartModel>('cart');
        final cartItems = _box.values.toList();

        // final cartItems = _cartService.getCartItems();
        // log('Cart items loaded: ${cartItems.length}');
        emit(CartState.loaded(cartItems));
      } catch (_) {
        emit(const CartState.error());
      }
    });
  }
}
