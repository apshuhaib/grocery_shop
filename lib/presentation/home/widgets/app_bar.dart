import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/presentation/cart/cart.dart';
import 'package:e_commerce_test/presentation/cart/widgets/cart_icon_widget.dart';
import 'package:flutter/material.dart';

class AppBarMain extends StatelessWidget {
  final String title;

  const AppBarMain({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        CartIconWidget(
          onCartPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Cart();
            }));
          },
        ),
        kWidth,
      ],
    );
  }
}
