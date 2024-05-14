import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarMain extends StatelessWidget {
  final String title;

  const AppBarMain({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.transparent,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 35,
                  color: Colors.green,
                ),
              ),
            ),
            const Positioned(
              right: 7,
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 10,
                child: Center(
                    child: Text(
                  '5',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
        kWidth,
      ],
    );
  }
}
