import 'package:e_commerce_test/application/cart/cart_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemCard extends StatefulWidget {
  final String itemName;
  final double itemPrice;
  final String imgurl;
  final double totalPrice;
  final int quantity;
  final CartModel cartItem;
  final Function(int) onQuantityChanged;
  const CartItemCard({
    super.key,
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
  late int _quantity;

  @override
  void initState() {
    _quantity = widget.quantity;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double totalPrice = widget.itemPrice * _quantity;
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
                  IconButton(
                    onPressed: () {
                      if (_quantity > 0) {
                        BlocProvider.of<CartBloc>(context)
                            .add(CartEvent.decrementCartItem(widget.cartItem));
                        setState(() {
                          _quantity--;
                          totalPrice -= widget.itemPrice;
                          widget.onQuantityChanged(
                              _quantity); // Update the quantity locally
                        });
                      }
                    },
                    icon: const CircleAvatar(
                      radius: 16,
                      backgroundColor: kgreen,
                      child: CircleAvatar(
                        radius: 14,
                        backgroundColor: kwhiteColor,
                        child: Icon(
                          Icons.remove,
                          color: kgreen,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '$_quantity',
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {
                      BlocProvider.of<CartBloc>(context)
                          .add(CartEvent.incrementCartItem(widget.cartItem));
                      setState(() {
                        _quantity++;
                        totalPrice += widget.itemPrice;
                        widget.onQuantityChanged(_quantity);

                        // Increment the quantity locally
                      });
                      print(_quantity);
                    },
                    icon: const CircleAvatar(
                        radius: 16,
                        backgroundColor: kgreen,
                        child: Icon(
                          Icons.add,
                          color: kwhiteColor,
                        )),
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
                '\$ $totalPrice',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: kgreen),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
