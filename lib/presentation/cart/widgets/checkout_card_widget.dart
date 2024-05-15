import 'package:e_commerce_test/application/order/order_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:e_commerce_test/domain/orders/model/order_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckoutCardWidget extends StatelessWidget {
  final List<CartModel> cartItems;
  final double subtotal;
  const CheckoutCardWidget(
      {super.key, required this.cartItems, required this.subtotal});

  @override
  Widget build(BuildContext context) {
    double subtotal = 0;
    for (final item in cartItems) {
      subtotal += item.price.toDouble() * item.quantity;
    }
    return Container(
      color: Colors.green[100],
      padding: EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Subtotal', // Replace with actual total
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green[400],
                    fontSize: 16),
              ),
              Text(
                '\$${subtotal.toStringAsFixed(2)}', // Replace with actual total
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: kgreen, fontSize: 25),
              ),
            ],
          ),
          Container(
            width: 200,
            height: 55,
            decoration: BoxDecoration(
              color: kgreen,
              borderRadius: BorderRadius.circular(18),
            ),
            child: TextButton(
              onPressed: () {
                final request = OrderRequest(
                  customerId: 2,
                  totalPrice: subtotal,
                  products: cartItems.map((item) {
                    return OrderProduct(
                      productId: int.parse(item.productId),
                      quantity: item.quantity,
                      price: item.price.toDouble(),
                    );
                  }).toList(),
                );
                BlocProvider.of<OrderBloc>(context)
                    .add(OrderEvent.placeOrder(request));
              },
              child: const Text(
                'CHECKOUT NOW',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: kwhiteColor,
                ),
              ),
            ),
          )
          // ElevatedButton(
          //   onPressed: () {
          //     // Handle checkout action
          //   },
          //   child: Text('Checkout'),
          // ),
        ],
      ),
    );
  }
}
