import 'package:e_commerce_test/application/cart_shop/cartshop_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/presentation/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartIconWidget extends StatelessWidget {
  final VoidCallback onCartPressed;

  const CartIconWidget({
    super.key,
    required this.onCartPressed,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartshopBloc, CartshopState>(
      builder: (context, state) {
        int cartCount = state.cartItems.length;
        return Badge(
            label: Text(
              cartCount.toString(),
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return MyCart();
                      },
                    ),
                  );
                },
                icon: Icon(
                  Icons.shopping_cart,
                  size: 32,
                  color: kgreen,
                )));
      },
    );

    // return Stack(
    //   children: [
    //     CircleAvatar(
    //       radius: 30,
    //       backgroundColor: Colors.transparent,
    //       child: IconButton(
    //         onPressed: onCartPressed,
    //         icon: const Icon(
    //           Icons.shopping_cart,
    //           size: 35,
    //           color: Colors.green,
    //         ),
    //       ),
    //     ),
    //     Positioned(
    //       right: 7,
    //       child: CircleAvatar(
    //         backgroundColor: Colors.red,
    //         radius: 10,
    //         child: Center(
    //             child: Text(
    //           cartCount,
    //           style:
    //               TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    //         )),
    //       ),
    //     )
    //   ],
    // );
  }
}
