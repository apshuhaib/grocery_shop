import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/presentation/home/static.dart';
import 'package:e_commerce_test/presentation/home/widgets/products_card.dart';
import 'package:e_commerce_test/presentation/widgets/main_title.dart';
import 'package:flutter/material.dart';

class DiscoverCard extends StatelessWidget {
  DiscoverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const MainTitle(title: 'Discovery'),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_right,
                  color: Colors.green,
                )
              ],
            ),
          ],
        ),
        kHeight,
        SizedBox(
          height: 250,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: discoveryProducts.length,
              itemBuilder: (context, index) {
                var productItems = discoveryProducts[index] as Map? ?? {};
                return ProductsCard(
                  productItems: productItems,
                  onPressed: () {},
                  onCartPressed: () {},
                );
              }),
        )
      ],
    );
  }
}
