import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  final String itemName;
  final double itemPrice;
  final String imgurl;
  const CartItemCard(
      {super.key,
      required this.itemName,
      required this.itemPrice,
      required this.imgurl});

  @override
  Widget build(BuildContext context) {
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
              child: Image.network(imgurl),
            ),
            Container(
              height: 90,
              width: 80,
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    itemName,
                    style: TextStyle(
                        color: kgreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    '3/kg',
                    style: TextStyle(
                        color: kgreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              width: 130,
              // color: Colors.yellow,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      radius: 20,
                      backgroundColor: kgreen,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: kwhiteColor,
                        child: Icon(
                          Icons.remove,
                          color: kgreen,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                        radius: 20,
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
                '\$ ${itemPrice}',
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
