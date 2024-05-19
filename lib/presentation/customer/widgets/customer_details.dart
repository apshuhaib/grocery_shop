import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:flutter/material.dart';

class CustomerDetails extends StatelessWidget {
  final String name;
  final String phone;
  final String street1;
  final String stree2;
  final String email;
  final String state;
  const CustomerDetails(
      {super.key,
      required this.name,
      required this.state,
      required this.phone,
      required this.street1,
      required this.stree2,
      required this.email});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name.toUpperCase(),
          style: const TextStyle(fontSize: 25, color: kgreen),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Card(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: 200,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name.toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: kgreen),
                    ),
                    Text(phone,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey[700])),
                    Text(
                      email,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey[700]),
                    ),
                    Text(
                      street1,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[600]),
                    ),
                    Text(
                      stree2,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[600]),
                    ),
                    Text(
                      state,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
