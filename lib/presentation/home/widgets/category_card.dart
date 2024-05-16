import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/presentation/widgets/main_title.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  CategoriesCard({super.key});

  final List<String> imagePaths = [
    'assets/images/categories_1.jpg',
    'assets/images/categories_2.jpg',
    'assets/images/categories_3.jpg',
    'assets/images/categories_4.jpg',
    'assets/images/cateogries_5.jpg',
  ];

  final List categoriesProducts = [
    {
      "name": "Fruit",
      "icon": "assets/images/categories_1.jpg",
    },
    {
      "name": "Veggie",
      "icon": "assets/images/categories_2.jpg",
    },
    {
      "name": "Spice",
      "icon": "assets/images/categories_3.jpg",
    },
    {
      "name": "Bread",
      "icon": "assets/images/categories_4.jpg",
    },
    {
      "name": "Dairy",
      "icon": "assets/images/cateogries_5.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MainTitle(title: 'Categories'),
        kHeight,
        LimitedBox(
          maxHeight: 80,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(categoriesProducts.length, (index) {
              final product = categoriesProducts[index];
              return Container(
                width: 70,
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          product["icon"], // Use the current image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    kHeight5,
                    Text(
                      product["name"],
                      style:
                          TextStyle(color: kgreen, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
