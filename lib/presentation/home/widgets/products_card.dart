import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:flutter/material.dart';

class ProductsCard extends StatelessWidget {
  final Map productItems;
  final VoidCallback onPressed;
  final VoidCallback onCartPressed;
  const ProductsCard(
      {super.key,
      required this.productItems,
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
                Image.asset(
                  productItems["icon"],
                  width: 100,
                  height: 75,
                  fit: BoxFit.contain,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite_outline_rounded))
              ],
            ),
            kHeight20,
            Text(
              productItems["name"],
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  productItems["price"],
                  style: TextStyle(
                      color: kgreen, fontWeight: FontWeight.w600, fontSize: 18),
                ),
                InkWell(
                  onTap: onCartPressed,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: kgreen, borderRadius: BorderRadius.circular(15)),
                    child: Icon(
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
