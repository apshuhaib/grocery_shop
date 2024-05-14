import 'package:flutter/material.dart';

class CartIconWidget extends StatelessWidget {
  final VoidCallback onCartPressed;
  final String cartCount;
  const CartIconWidget(
      {super.key, required this.onCartPressed, this.cartCount = '0'});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.transparent,
          child: IconButton(
            onPressed: onCartPressed,
            icon: const Icon(
              Icons.shopping_cart,
              size: 35,
              color: Colors.green,
            ),
          ),
        ),
        Positioned(
          right: 7,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 10,
            child: Center(
                child: Text(
              cartCount,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
        )
      ],
    );
  }
}
