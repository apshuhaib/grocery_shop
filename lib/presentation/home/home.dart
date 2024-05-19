import 'package:e_commerce_test/application/cart_shop/cartshop_bloc.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/core/debouncer/debouncer.dart';
import 'package:e_commerce_test/presentation/home/widgets/app_bar.dart';
import 'package:e_commerce_test/presentation/home/widgets/carousel_card.dart';
import 'package:e_commerce_test/presentation/home/widgets/category_card.dart';
import 'package:e_commerce_test/presentation/home/widgets/discovery_card.dart';
import 'package:e_commerce_test/presentation/home/widgets/search_categories_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  final _debouncer = Debouncer(milliseconds: 1 * 1000);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _searchController = TextEditingController();
  bool _isSearching = false;

  List<Map<String, String>> categoriesProducts = [
    {
      "name": "Fruit",
      "icon": "assets/images/categories_1.jpg",
    },
    {
      "name": "Veggie",
      "icon": "assets/images/categories_2.jpg",
    },
    {
      "name": "Spice",
      "icon": "assets/images/categories_3.jpg",
    },
    {
      "name": "Bread",
      "icon": "assets/images/categories_4.jpg",
    },
    {
      "name": "Dairy",
      "icon": "assets/images/cateogries_5.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        BlocProvider.of<CartshopBloc>(context)
            .add(const CartshopEvent.loadCartItems());
      },
    );
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: AppBarMain(title: 'Good Day!👋'),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
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
                    const Text('Search Results:'),
                    const SizedBox(height: 20),
                    Column(
                      children: categoriesProducts
                          .where((category) => category['name']!
                              .toLowerCase()
                              .contains(_searchController.text.toLowerCase()))
                          .map((category) {
                        return CategoryCard(
                          name: category['name']!,
                          image: category['icon']!,
                        );
                      }).toList(),
                    ),
                  ],
                ],
              ),
            ),
          )),
    );
  }
}
