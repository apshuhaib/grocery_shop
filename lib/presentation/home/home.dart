import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/presentation/home/widgets/app_bar.dart';
import 'package:e_commerce_test/presentation/home/widgets/carousel_card.dart';
import 'package:e_commerce_test/presentation/home/widgets/category_card.dart';
import 'package:e_commerce_test/presentation/home/widgets/discovery_card.dart';
import 'package:e_commerce_test/presentation/home/widgets/search_categories_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

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
              CupertinoSearchTextField(
                controller: _searchController,
                onChanged: (value) {
                  setState(() {
                    _isSearching = value.isNotEmpty;
                  });
                },
                padding: const EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
                placeholder: 'Search grocery',
                placeholderStyle: const TextStyle(
                  color: Colors.green,
                ),
                prefixIcon: const Icon(
                  size: 30,
                  Icons.search,
                  color: Colors.green,
                ),
                decoration: const BoxDecoration(color: Colors.white),
              ),
              kHeight20,
              if (!_isSearching) ...[
                CarouselCard(),
                kHeight20,
                CategoriesCard(),
                kHeight20,
                DiscoverCard(),
                kHeight20,
              ] else ...[
                const SizedBox(height: 20),
                Text('Search Results:'),
                const SizedBox(height: 20),
                const CategoryCard(
                  name: 'fruits',
                  image: 'assets/images/categories_1.jpg',
                ),
                const CategoryCard(
                  name: 'veggies',
                  image: 'assets/images/categories_2.jpg',
                ),
                const CategoryCard(
                  name: 'spices',
                  image: 'assets/images/categories_3.jpg',
                ),
                const CategoryCard(
                  name: 'Bread',
                  image: 'assets/images/categories_4.jpg',
                ),
                const CategoryCard(
                  name: 'Dairy',
                  image: 'assets/images/cateogries_5.jpg',
                ),
              ],
              // CarouselCard(),
              // kHeight20,
              // CategoriesCard(),
              // DiscoverCard(),
            ],
          ),
        ),
      )),
    );
  }
}
