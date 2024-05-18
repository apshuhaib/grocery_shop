import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/presentation/cart/cart.dart';
import 'package:e_commerce_test/presentation/cart/widgets/cart_icon_widget.dart';
import 'package:flutter/material.dart';

class AppBarMain extends StatelessWidget {
  final String title;

  AppBarMain({
    super.key,
    required this.title,
  });
  final ValueNotifier<int> cartCountNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.green,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: CartIconWidget(
            onCartPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const MyCart();
              }));
            },
          ),
        ),
        kWidth,
      ],
    );
  }
}
