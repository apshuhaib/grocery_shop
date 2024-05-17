import 'package:flutter/material.dart';

List discoveryProducts = [
  {
    "id": 10,
    "name": "Chicken Brolier",
    "icon": "assets/images/chicken_broiler.png",
    "qty": "7",
    "price": "\$35/kg",
  },
  {
    "id": 11,
    "name": "Beef Tenderloin",
    "icon": "assets/images/beef.png",
    "qty": "7",
    "price": "\$45/kg",
  }
];

List categoriesProducts = [
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

class CategoriesList extends StatelessWidget {
  final List<String> categories;

  const CategoriesList({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Categories:',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                category,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
