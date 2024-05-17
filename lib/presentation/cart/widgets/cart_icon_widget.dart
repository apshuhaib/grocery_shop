import 'package:e_commerce_test/application/cart/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartIconWidget extends StatelessWidget {
  final VoidCallback onCartPressed;
  final ValueNotifier<int> cartCountNotifier;
  const CartIconWidget({
    super.key,
    required this.onCartPressed,
    required this.cartCountNotifier,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CartBloc>(context).add(const CartEvent.loadCart());
    });
    return ValueListenableBuilder(
      valueListenable: cartCountNotifier,
      builder: (context, cartCount, child) {
        return Badge(
          label: Text(cartCount.toString()),
          child: const Icon(
            Icons.shopping_cart,
            size: 35,
            color: Colors.green,
          ),
        );
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
