import 'package:e_commerce_test/application/product/product_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/strings.dart';
import 'package:e_commerce_test/presentation/home/static.dart';
import 'package:e_commerce_test/presentation/product/static_data.dart';
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
          Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 35,
                    color: Colors.green,
                  ),
                ),
              ),
              const Positioned(
                right: 7,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 10,
                  child: Center(
                      child: Text(
                    '5',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
        ],
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
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
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
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
                          onCartPressed: () {},
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
    );
  }
}
