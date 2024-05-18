import 'package:e_commerce_test/application/cart_shop/cartshop_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:e_commerce_test/presentation/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartItemCard extends StatefulWidget {
  final String id;
  final String itemName;
  final double itemPrice;
  final String imgurl;
  final double totalPrice;
  final int quantity;
  final CartModel cartItem;
  final Function(int) onQuantityChanged;
  const CartItemCard({
    super.key,
    required this.id,
    required this.itemName,
    required this.itemPrice,
    required this.imgurl,
    required this.totalPrice,
    required this.quantity,
    required this.cartItem,
    required this.onQuantityChanged,
  });

  @override
  State<CartItemCard> createState() => _CartItemCardState();
}

class _CartItemCardState extends State<CartItemCard> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartshopBloc, CartshopState>(
      builder: (context, state) {
        return Card(
          child: Container(
            height: 100,
            width: double.infinity,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 90,
                  width: 80,
                  // color: Colors.red,
                  child: Image.network(widget.imgurl),
                ),
                kWidth,
                Container(
                  height: 90,
                  width: 80,
                  // color: Colors.blue,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.itemName,
                        style: const TextStyle(
                            color: kgreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(
                        '${widget.itemPrice}/kg',
                        style: const TextStyle(
                            color: kgreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 140,
                  // color: Colors.yellow,
                  child: Row(
                    children: [
                      if (widget.quantity > 1)
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            BlocProvider.of<CartshopBloc>(context).add(
                                CartshopEvent.decrementCartItem(
                                    widget.cartItem, widget.id));
                          },
                        ),
                      if (widget.quantity == 1)
                        IconButton(
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            BlocProvider.of<CartshopBloc>(context)
                                .add(CartshopEvent.removeFromCart(widget.id));
                          },
                        ),
                      Text(
                        '${widget.quantity}',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          BlocProvider.of<CartshopBloc>(context).add(
                              CartshopEvent.incrementCartItem(
                                  widget.cartItem, widget.id));
                        },
                        icon: const CircleAvatar(
                          radius: 16,
                          backgroundColor: kgreen,
                          child: Icon(
                            Icons.add,
                            color: kwhiteColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  width: 60,
                  // color: Colors.green,
                  child: Center(
                    child: Text(
                      '${widget.quantity * widget.itemPrice}',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kgreen),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
