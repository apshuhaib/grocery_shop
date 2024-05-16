import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/presentation/customer/customer.dart';
import 'package:e_commerce_test/presentation/home/home.dart';
import 'package:e_commerce_test/presentation/main_page/widgets/custom_bottom_nav_bar.dart';
import 'package:e_commerce_test/presentation/product/product.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  final _pages = [
    HomePage(),
    const ProductsPage(),
    CustomerPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: changeIndexNotifier,
            builder: (context, int index, _) {
              return _pages[index];
            }),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
