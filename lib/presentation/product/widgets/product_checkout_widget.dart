import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/presentation/customer/customer.dart';
import 'package:flutter/material.dart';

class ProductCheckout extends StatelessWidget {
  final double subtotal;
  const ProductCheckout({
    super.key,
    required this.subtotal,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Subtotal', // Replace with actual total
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green[400],
                    fontSize: 16),
              ),
              Text(
                '\$$subtotal', // Replace with actual total
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: kgreen, fontSize: 25),
              ),
            ],
          ),
          Container(
            width: size.width * 0.6,
            height: 55,
            decoration: BoxDecoration(
              color: kgreen,
              borderRadius: BorderRadius.circular(18),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return CustomerPage();
                }));
              },
              child: const Text(
                'CHECKOUT NOW',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: kwhiteColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
