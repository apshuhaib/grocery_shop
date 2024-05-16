import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/presentation/home/widgets/app_bar.dart';
import 'package:e_commerce_test/presentation/home/widgets/carousel_card.dart';
import 'package:e_commerce_test/presentation/home/widgets/category_card.dart';
import 'package:e_commerce_test/presentation/home/widgets/discovery_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const AppBarMain(
                title: 'Good Day!👋',
              ),
              kHeight20,
              const CupertinoSearchTextField(
                padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                placeholder: 'Serach grocery',
                placeholderStyle: TextStyle(
                  color: Colors.green,
                ),
                prefixIcon: Icon(
                  size: 30,
                  Icons.search,
                  color: Colors.green,
                ),
                decoration: BoxDecoration(color: Colors.white),
              ),
              kHeight20,
              CarouselCard(),
              kHeight20,
              CategoriesCard(),
              DiscoverCard(),
            ],
          ),
        ),
      )),
    );
  }
}
