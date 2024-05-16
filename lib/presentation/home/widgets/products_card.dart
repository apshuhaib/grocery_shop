import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:flutter/material.dart';

class ProductsCard extends StatefulWidget {
  final Map productItems;
  final VoidCallback onPressed;
  final VoidCallback onCartPressed;
  const ProductsCard(
      {super.key,
      required this.productItems,
      required this.onPressed,
      required this.onCartPressed});

  @override
  State<ProductsCard> createState() => _ProductsCardState();
}

class _ProductsCardState extends State<ProductsCard> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
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
                  widget.productItems["icon"],
                  width: 100,
                  height: 75,
                  fit: BoxFit.contain,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isLiked = !isLiked;
                    });
                  },
                  icon: Icon(Icons.favorite_outline_rounded),
                  color: isLiked ? Colors.red : null,
                )
              ],
            ),
            kHeight20,
            Text(
              widget.productItems["name"],
              style: const TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.productItems["price"],
                  style: const TextStyle(
                      color: kgreen, fontWeight: FontWeight.w600, fontSize: 18),
                ),
                InkWell(
                  onTap: widget.onCartPressed,
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
