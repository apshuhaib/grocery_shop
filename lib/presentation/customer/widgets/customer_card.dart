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
        width: double.infinity,
        height: 140,
        // color: Colors.blue,
        child: Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            kWidth,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      customerName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    Icon(Icons.message)
                  ],
                ),
                kHeight,
                Text(
                  customerId,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]),
                ),
                kHeight,
                Text(
                  customerAddress,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
