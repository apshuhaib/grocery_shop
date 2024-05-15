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

  // Future<void> loadAllTodos() async {
  //   var _box = await Hive.openBox('cart');
  //   _box.values.toList();
  //   print(_box.values.toList());
  //   setState(() {});
  // }

  // @override
  // void initState() {
  //   loadAllTodos();
  //   super.initState();
  // }

  // @override
  // Widget build(BuildContext context) {
  //   WidgetsBinding.instance.addPostFrameCallback(
  //     (_) {
  //       BlocProvider.of<CartBloc>(context).add(const CartEvent.loadCart());
  //     },
  //   );
  //   return Scaffold(
  //     appBar: AppBar(
  //       centerTitle: true,
  //       title: const Text(
  //         'My Cart',
  //         style: TextStyle(
  //           color: kgreen,
  //           fontSize: 30,
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     ),
  //     body: Column(
  //       children: [
  //         BlocBuilder<CartBloc, CartState>(
  //           builder: (context, state) {

  //             return Expanded(
  //               child: ListView.builder(
  //                 itemCount: 10,
  //                 itemBuilder: (context, index) {
  //                   return CartItemCard();
  //                 },
  //               ),
  //             );
  //           },
  //         ),
  //         CheckoutCardWidget(),
  //       ],
  //     ),
  //   );
  // }
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
        actions: [
          TextButton(
              onPressed: () async {
                clearCartData();
              },
              child: Text('clear'))
        ],
      ),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return state.when(
            initial: () {
              // Return your initial UI state here if needed
              return const Center(child: Text('Initial state'));
            },
            loading: () {
              // Return a loading indicator while waiting for cart items
              return const Center(child: CircularProgressIndicator());
            },
            loaded: (cartItems) {
              cartItems = cartItems.reversed.toList();
              // Display the list of cart items when loaded
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
                        );
                      },
                    ),
                  ),
                  const CheckoutCardWidget(), // Assuming this widget is for checkout
                ],
              );
            },
            error: () {
              // Return an error message if loading fails

              return const Center(child: Text('Error loading cart items'));
            },
          );
        },
      ),
    );
  }

  Future<void> clearCartData() async {
    try {
      // Open the Hive box
      final _box = await Hive.openBox<CartModel>('cart');

      // Clear the box to remove all items
      await _box.clear();
    } catch (e) {
      // Handle any errors
      print('Error clearing cart data: $e');
    }
  }
}
