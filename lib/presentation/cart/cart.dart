import 'package:e_commerce_test/application/cart/cart_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/strings.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:e_commerce_test/presentation/cart/widgets/cart_item_card.dart';
import 'package:e_commerce_test/presentation/cart/widgets/checkout_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Cart extends StatefulWidget {
  Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<CartModel> cartList = [];
  double subtotal = 0;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CartBloc>(context).add(const CartEvent.loadCart());
    });
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: kgreen,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              return const Center(child: Text('Initial state'));
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            loaded: (cartItems) {
              cartItems = cartItems.reversed.toList();
              subtotal = calculateSubtotal(cartList);

              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        final products = cartItems[index];
                        return CartItemCard(
                          itemName: products.productName,
                          itemPrice: products.price.toDouble(),
                          imgurl: '$imageAppendUrl${products.imageUrl}',
                          quantity: products.quantity,
                          totalPrice:
                              (products.price.toDouble()) * products.quantity,
                          cartItem: products,
                          onQuantityChanged: (newQuantity) {
                            // Update subtotal when quantity changes
                            setState(() {
                              subtotal = calculateSubtotal(cartList);
                            });
                          },
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: CheckoutCardWidget(
                      cartItems: cartItems,
                      subtotal: subtotal,
                    ),
                  ),
                ],
              );
            },
            error: () {
              return const Center(child: Text('Error loading cart items'));
            },
          );
        },
      ),
    );
  }

  Future<void> clearCartData() async {
    try {
      final _box = await Hive.openBox<CartModel>('cart');

      await _box.clear();
    } catch (e) {
      print('Error clearing cart data: $e');
    }
  }

  double calculateSubtotal(List<CartModel> cartList) {
    double total = 0;
    for (final item in cartList) {
      total += item.price.toDouble() * item.quantity;
    }
    return total;
  }
}
