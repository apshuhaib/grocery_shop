import 'dart:developer';

import 'package:flutter/material.dart';
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
  // int cartCount = 0;
  CartBloc(this._cartService) : super(const _Initial()) {
    //add to cart
    on<OnAddToCart>((event, emit) async {
      try {
        final _box = await Hive.openBox<CartModel>('cart');
        final List<CartModel> cartItems = _box.values.toList();

        bool productExists =
            cartItems.any((item) => item.productId == event.cartItem.productId);

        if (productExists) {
          ScaffoldMessenger.of(event.context!).showSnackBar(
            const SnackBar(
              content: Text(
                'This product is already in the cart.',
                style: TextStyle(fontSize: 20, color: Colors.red),
              ),
              duration: Duration(seconds: 2),
            ),
          );
        } else {
          await _box.add(event.cartItem);
          final updatedCartItems = _cartService.getCartItems();
          emit(CartState.loaded(updatedCartItems));
        }
      } catch (_) {
        emit(const CartState.error());
      }
    });

    //delete cart item
    on<onRemovefromCart>((event, emit) async {
      try {
        final _box = await Hive.openBox<CartModel>('cart');

        final List<CartModel> cartItems = _box.values.toList();

        final int index =
            cartItems.indexWhere((item) => item.productId == event.productId);

        if (index != -1) {
          cartItems.removeAt(index);

          await _box.clear();
          await _box.addAll(cartItems);

          emit(CartState.loaded(cartItems));
        } else {
          emit(const CartState.error());
        }
      } catch (e) {
        emit(const CartState.error());
      }
    });

    //load cart item
    on<LoadCart>((event, emit) async {
      try {
        final _box = await Hive.openBox<CartModel>('cart');
        final cartItems = _box.values.toList();
        emit(CartState.loaded(cartItems));
      } catch (_) {
        emit(const CartState.error());
      }
    });

    //increement cart item
    on<IncrementCartItem>((event, emit) async {
      try {
        final _box = await Hive.openBox<CartModel>('cart');

        final List<CartModel> cartItems = _box.values.toList();

        final updatedCartItems = cartItems.map((item) {
          if (item.productId == event.cartItem.productId) {
            item.quantity += 1;
          }
          return item;
        }).toList();

        await _box.clear();
        await _box.addAll(updatedCartItems);

        emit(CartState.loaded(updatedCartItems));
      } catch (e) {
        emit(const CartState.error());
      }
    });

    //decreement
    on<DecrementCartItem>((event, emit) async {
      try {
        final _box = await Hive.openBox<CartModel>('cart');

        final List<CartModel> cartItems = _box.values.toList();

        for (int i = 0; i < cartItems.length; i++) {
          if (cartItems[i].productId == event.cartItem.productId) {
            if (cartItems[i].quantity > 0) {
              cartItems[i].quantity -= 1;

              await _box.put(i, cartItems[i]);
              break;
            }
          }
        }

        emit(CartState.loaded(cartItems));
      } catch (e) {
        emit(const CartState.error());
      }
    });
  }
}
