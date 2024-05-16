import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String image;

  const CategoryCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        image,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(name),
      onTap: () {
        // Handle category tap
      },
    );
  }
}
