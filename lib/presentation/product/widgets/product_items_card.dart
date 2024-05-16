import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:flutter/material.dart';

class ProductsItemCard extends StatelessWidget {
  final String productName;
  final String imgUrl;
  final String price;
  final VoidCallback onPressed;
  final VoidCallback onCartPressed;
  const ProductsItemCard(
      {super.key,
      required this.productName,
      required this.imgUrl,
      required this.price,
      required this.onPressed,
      required this.onCartPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 180,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          // color: Colors.red,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                  width: 100,
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline_rounded))
              ],
            ),
            kHeight20,
            Text(
              productName,
              style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rs ${price}',
                  style: const TextStyle(
                      color: kgreen, fontWeight: FontWeight.w600, fontSize: 18),
                ),
                InkWell(
                  onTap: onCartPressed,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: kgreen, borderRadius: BorderRadius.circular(15)),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
