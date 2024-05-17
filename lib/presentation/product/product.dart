import 'package:e_commerce_test/application/cart/cart_bloc.dart';
import 'package:e_commerce_test/application/product/product_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/core/strings.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:e_commerce_test/presentation/cart/cart.dart';
import 'package:e_commerce_test/presentation/cart/widgets/cart_icon_widget.dart';
import 'package:e_commerce_test/presentation/customer/customer.dart';
import 'package:e_commerce_test/presentation/product/widgets/product_checkout_widget.dart';
import 'package:e_commerce_test/presentation/product/widgets/product_items_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ProductBloc>(context)
          .add(const ProductEvent.initialize());
      BlocProvider.of<CartBloc>(context).add(const CartEvent.loadCart());
    });
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
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
          CartIconWidget(
            onCartPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return Cart();
                  },
                ),
              );
            },
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
                                  BlocProvider.of<CartBloc>(context).add(
                                      CartEvent.onAddToCart(product, context));
                                  print(product.productId);
                                },
                              );
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
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: ProductCheckout(),
          ),
        ],
      ),
    );
  }
}
