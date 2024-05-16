import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/presentation/main_page/main_page.dart';
import 'package:e_commerce_test/presentation/main_page/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrderAcceptedWidget extends StatelessWidget {
  const OrderAcceptedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/bg-white.jpg',
              width: media.width,
              height: media.height,
            ),
            Column(
              children: [
                Spacer(),
                Center(
                  child: Image.asset(
                    'assets/images/order-accepted.png',
                    width: media.width * 0.8,
                  ),
                ),
                Text(
                  'Order Accepted',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: kBlackColor,
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Container(
                  width: media.width * 0.6,
                  height: 60,
                  decoration: BoxDecoration(
                      color: kgreen, borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Track Order',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kwhiteColor,
                          fontSize: 20),
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      changeIndexNotifier.value = 0;
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) {
                        return MainPage();
                      }), (route) => false);
                    },
                    child: Text(
                      'Back to home',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kgreen,
                          fontSize: 20),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
