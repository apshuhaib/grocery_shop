import 'package:e_commerce_test/core/constants.dart';
import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  final String customerName;
  final String customerId;
  final String customerAddress;

  final String imgUrl;
  CustomerCard({
    super.key,
    required this.customerName,
    required this.customerId,
    required this.customerAddress,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        width: double.infinity,
        height: 140,
        // color: Colors.blue,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const VerticalDivider(
              color: Colors.grey, // Customize divider color as needed
              thickness: 0.8, // Customize divider thickness as needed
              width: 5, // Customize divider width as needed
            ),
            kWidth,
            Container(
              // color: Colors.blue,
              width: 180,
              height: 110,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    overflow: TextOverflow.ellipsis,
                    customerName,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "ID : $customerId",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  ),
                  Text(
                    customerAddress,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.red,
              width: 50,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.blue,
                  ),
                  Icon(Icons.message)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}