import 'dart:ffi';

import 'package:e_commerce_test/application/cart_shop/cartshop_bloc.dart';
import 'package:e_commerce_test/application/product/product_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/core/strings.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:e_commerce_test/presentation/cart/cart.dart';
import 'package:e_commerce_test/presentation/cart/widgets/cart_icon_widget.dart';
import 'package:e_commerce_test/presentation/home/home.dart';
import 'package:e_commerce_test/presentation/main_page/main_page.dart';
import 'package:e_commerce_test/presentation/main_page/widgets/custom_bottom_nav_bar.dart';
import 'package:e_commerce_test/presentation/product/widgets/product_checkout_widget.dart';
import 'package:e_commerce_test/presentation/product/widgets/product_items_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({super.key});
  ValueNotifier<double> subtotalNotifier = ValueNotifier<double>(0.0);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProductBloc>(context)
          .add(const ProductEvent.initialize());
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              changeIndexNotifier.value = 0;
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MainPage();
              }));
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 32,
              color: kgreen,
            )),
        centerTitle: true,
        title: const Text(
          'Products',
          style: TextStyle(
            color: kgreen,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: CartIconWidget(
              onCartPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const MyCart();
                    },
                  ),
                );
              },
            ),
          ),
          kWidth,
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: kgreen,
                    ),
                  );
                } else if (state.isError) {
                  return const Center(
                    child: Text('Unexpected Error'),
                  );
                } else {
                  return CustomScrollView(
                    slivers: [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 8),
                        sliver: SliverGrid(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1 / 1.2,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 4,
                          ),
                          delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                              var products = state.productResultData[index];
                              return ProductsItemCard(
                                  productName: products.name ?? 'NA',
                                  imgUrl: '$imageAppendUrl${products.image}',
                                  price: products.price.toString(),
                                  onPressed: () {},
                                  onCartPressed: () async {
                                    final product = CartModel(
                                      productId: products.id.toString(),
                                      productName: products.name!,
                                      quantity: 1,
                                      price: products.price!.toDouble(),
                                      imageUrl: products.image!,
                                    );

                                    BlocProvider.of<CartshopBloc>(context)
                                        .add(CartshopEvent.addToCart(product));
                                  });
                            },
                            childCount: state.productResultData.length,
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: BlocListener<CartshopBloc, CartshopState>(
              listener: (context, state) {
                // Calculate the subtotal when cart items change
                double subtotal = state.cartItems.fold<double>(
                  0,
                  (previousValue, element) =>
                      previousValue + (element.price * element.quantity),
                );
                // Update the subtotal
                subtotalNotifier.value = subtotal;
              },
              child: ValueListenableBuilder<double>(
                  valueListenable: subtotalNotifier,
                  builder: (context, value, child) {
                    return ProductCheckout(subtotal: value);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
