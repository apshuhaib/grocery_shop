import 'package:e_commerce_test/application/order/order_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:e_commerce_test/domain/orders/model/order_model.dart';
import 'package:e_commerce_test/presentation/cart/cart.dart';
import 'package:e_commerce_test/presentation/cart/widgets/order_accepted_widget.dart';
import 'package:e_commerce_test/presentation/main_page/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CheckoutCardWidget extends StatelessWidget {
  final List<CartModel> cartItems;
  final double subtotal;
  const CheckoutCardWidget(
      {super.key, required this.cartItems, required this.subtotal});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double subtotal = 0;
    for (final item in cartItems) {
      subtotal += item.price.toDouble() * item.quantity;
    }
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Subtotal',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green[400],
                    fontSize: 16),
              ),
              Text(
                '\$${subtotal.toStringAsFixed(2)}',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, color: kgreen, fontSize: 25),
              ),
            ],
          ),
          Container(
            width: size.width * 0.55,
            height: 55,
            decoration: BoxDecoration(
              color: kgreen,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Center(
              child: TextButton(
                onPressed: () {
                  if (cartItems.isNotEmpty) {
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
                    clearCartData();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Order Placed Successfully'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                    changeIndexNotifier.value = 0;

                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return Cart();
                    // }));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Cannot place order: Cart is empty'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
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
            ),
          )
        ],
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
}
