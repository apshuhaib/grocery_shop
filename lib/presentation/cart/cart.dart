import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/presentation/cart/widgets/cart_item_card.dart';
import 'package:e_commerce_test/presentation/cart/widgets/checkout_card_widget.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return CartItemCard();
              },
            ),
          ),
          CheckoutCardWidget(),
        ],
      ),
    );
  }
}
