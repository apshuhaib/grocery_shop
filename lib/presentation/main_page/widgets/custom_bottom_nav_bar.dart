import 'package:flutter/material.dart';

ValueNotifier<int> changeIndexNotifier = ValueNotifier(0);

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: changeIndexNotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              changeIndexNotifier.value = index;
            },
            elevation: 0,
            backgroundColor: Colors.green.withOpacity(0.3),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.green,
            selectedIconTheme: IconThemeData(color: Colors.white),
            unselectedIconTheme: IconThemeData(color: Colors.green),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_basket_outlined),
                  label: 'Products'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people), label: 'Customers'),
            ],
          );
        });
  }
}
