import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselCard extends StatelessWidget {
  CarouselCard({super.key});

  final List<String> imagePaths = [
    'assets/images/grocery_1.jpg',
    'assets/images/grocer2.jpg',
    'assets/images/grocery3.jpg',
    'assets/images/grocery4.jpg',
    'assets/images/grocer_5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(enableInfiniteScroll: false, height: 200.0),
      items: imagePaths.map((String imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45), color: Colors.amber),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(45),
                child: Image.asset(
                  imagePath, // Use the current image path
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
