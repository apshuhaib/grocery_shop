import 'package:e_commerce_test/application/cart_shop/cartshop_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/strings.dart';
import 'package:e_commerce_test/presentation/cart/widgets/cart_item_card.dart';
import 'package:e_commerce_test/presentation/customer/customer.dart';
import 'package:e_commerce_test/presentation/main_page/main_page.dart';
import 'package:e_commerce_test/presentation/main_page/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CartshopBloc>(context)
          .add(const CartshopEvent.loadCartItems());
    });
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: kgreen,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            changeIndexNotifier.value = 1;
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return MainPage();
            }));
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 32,
            color: kgreen,
          ),
        ),
      ),
      body: BlocBuilder<CartshopBloc, CartshopState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.cartItems.isEmpty) {
            return const Center(
              child: Text('cart is empty'),
            );
          } else if (state.isError) {
            return const Center(
              child: Text('error'),
            );
          }
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.cartItems.length,
                  itemBuilder: (context, index) {
                    final products = state.cartItems[index];

                    return CartItemCard(
                      id: products.productId,
                      itemName: products.productName,
                      itemPrice: products.price.toDouble(),
                      imgurl: '$imageAppendUrl${products.imageUrl}',
                      quantity: products.quantity,
                      totalPrice:
                          (products.price.toDouble()) * products.quantity,
                      cartItem: products,
                      onQuantityChanged: (newQuantity) {},
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            'Subtotal',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green[400],
                                fontSize: 16),
                          ),
                          Text(
                            '\$${state.totalPrice.toStringAsFixed(2)}',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kgreen,
                                fontSize: 25),
                          ),
                        ],
                      ),
                      Container(
                        width: size.width * 0.5,
                        height: 55,
                        decoration: BoxDecoration(
                          color: kgreen,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return CustomerPage();
                            }));
                          },
                          child: const Text(
                            'CHECKOUT NOW',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: kwhiteColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
