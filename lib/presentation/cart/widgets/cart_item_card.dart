import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:flutter/material.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        width: double.infinity,
        // color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 90,
              width: 80,
              // color: Colors.red,
              child: Image.network(
                  'https://m.media-amazon.com/images/I/71GUFttn0jL._AC_UF1000,1000_QL80_.jpg'),
            ),
            Container(
              height: 90,
              width: 80,
              // color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Onion',
                    style: TextStyle(
                        color: kgreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    '3/kg',
                    style: TextStyle(
                        color: kgreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              width: 130,
              // color: Colors.yellow,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      radius: 20,
                      backgroundColor: kgreen,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: kwhiteColor,
                        child: Icon(
                          Icons.remove,
                          color: kgreen,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '0',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                        radius: 20,
                        backgroundColor: kgreen,
                        child: Icon(
                          Icons.add,
                          color: kwhiteColor,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              width: 60,
              // color: Colors.green,
              child: Center(
                  child: Text(
                'Rs 100',
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold, color: kgreen),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
