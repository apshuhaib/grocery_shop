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
    // on<OnAddToCart>((event, emit) async {
    //   try {
    //     final _box = await Hive.openBox<CartModel>('cart');
    //     await _box.add(event.cartItem);
    //     final cartItems = _cartService.getCartItems();
    //     // cartCount++;
    //     emit(CartState.loaded(cartItems));
    //   } catch (_) {
    //     emit(const CartState.error());
    //   }
    // });
    // on<OnAddToCart>((event, emit) async {
    //   try {
    //     final _box = await Hive.openBox<CartModel>('cart');

    //     // Check if the product already exists in the cart
    //     final existingProductIndex = _box.values
    //         .toList()
    //         .indexWhere((item) => item.productId == event.cartItem.productId);
    //     if (existingProductIndex != -1) {
    //       // Product already exists in the cart, show snackbar
    //       emit(const CartState.error());
    //       return;
    //     }

    //     // Product does not exist in the cart, add it
    //     await _box.add(event.cartItem);
    //     final cartItems = _cartService.getCartItems();
    //     emit(CartState.loaded(cartItems));
    //   } catch (_) {
    //     emit(const CartState.error());
    //   }
    // });
    on<OnAddToCart>((event, emit) async {
      try {
        final _box = await Hive.openBox<CartModel>('cart');
        final List<CartModel> cartItems = _box.values.toList();

        // Check if the product already exists in the cart
        bool productExists =
            cartItems.any((item) => item.productId == event.cartItem.productId);

        if (productExists) {
          // Product already exists, show error message
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
          // Product doesn't exist, add it to the cart
          await _box.add(event.cartItem);
          final updatedCartItems = _cartService.getCartItems();
          emit(CartState.loaded(updatedCartItems));
        }
      } catch (_) {
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
        // Open the Hive box
        final _box = await Hive.openBox<CartModel>('cart');

        // Retrieve the cart items from the box
        final List<CartModel> cartItems = _box.values.toList();

        // Find the item to be incremented
        final updatedCartItems = cartItems.map((item) {
          if (item.productId == event.cartItem.productId) {
            // Increment the quantity of the cart item
            item.quantity += 1;
          }
          return item;
        }).toList();

        // Save the updated items back to the box
        await _box.clear(); // Clear the box to update the items
        await _box.addAll(updatedCartItems); // Add the updated items to the box

        // Emit a new state with the updated cart items
        emit(CartState.loaded(updatedCartItems));
      } catch (e) {
        // Handle any errors
        emit(const CartState.error());
      }
    });

    //decreement
    on<DecrementCartItem>((event, emit) async {
      try {
        // Open the Hive box
        final _box = await Hive.openBox<CartModel>('cart');

        // Retrieve the cart items from the box
        final List<CartModel> cartItems = _box.values.toList();

        // Find the item to be decremented
        for (int i = 0; i < cartItems.length; i++) {
          if (cartItems[i].productId == event.cartItem.productId) {
            // Decrement the quantity of the cart item
            if (cartItems[i].quantity > 0) {
              cartItems[i].quantity -= 1;
              // Update the item in the box
              await _box.put(i, cartItems[i]);
              break; // No need to continue searching once item is found and updated
            }
          }
        }

        // Emit a new state with the updated cart items
        emit(CartState.loaded(cartItems));
      } catch (e) {
        // Handle any errors
        emit(const CartState.error());
      }
    });
  }
}
