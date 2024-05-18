import 'package:e_commerce_test/application/cart_shop/cartshop_bloc.dart';
import 'package:e_commerce_test/application/customer/customer_bloc.dart';
import 'package:e_commerce_test/application/order/order_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/domain/orders/model/order_model.dart';
import 'package:e_commerce_test/presentation/cart/widgets/order_accepted_widget.dart';
import 'package:e_commerce_test/presentation/customer/widgets/customer_card.dart';
import 'package:e_commerce_test/presentation/main_page/main_page.dart';
import 'package:e_commerce_test/presentation/main_page/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

class CustomerPage extends StatelessWidget {
  CustomerPage({super.key});
  // final List<String> defaultImage = [
  //   'https://www.shutterstock.com/image-photo/young-bearded-hipster-guy-wearing-260nw-2199108191.jpg',
  //   'https://r2.starryai.com/results/1003032515/44bf73d3-6d77-409f-927c-98a6ee5de9e3.webp',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7bSxiKP_HJK91DTWH5uvRvG_cbBzHE0cheNveYTWVZA&s'
  // ];

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // List<String> shuffledImages = List.from(defaultImage)..shuffle();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CustomerBloc>(context)
          .add(const CustomerEvent.initialize());
    });
    return Scaffold(
      appBar: AppBar(
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
            )),
        centerTitle: true,
        title: const Text(
          'Customers',
          style: TextStyle(
            color: kgreen,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.align_horizontal_right),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                BlocProvider.of<CustomerBloc>(context)
                    .add(CustomerEvent.searchCustomer(customerQuery: value));
              },
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.green,
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(color: Colors.green),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: const BorderSide(
                    color: Colors.green,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          kHeight,
          BlocBuilder<CustomerBloc, CustomerState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: kgreen,
                  ),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error'),
                );
              } else {
                final List displayList =
                    state.customerSearchResultData.isNotEmpty
                        ? state.customerSearchResultData
                        : state.customerResultData;

                return Expanded(
                  child: ListView.builder(
                    itemCount: displayList.length,
                    itemBuilder: (context, index) {
                      final customer = displayList[index];
                      return CustomerCard(
                        onTap: () {
                          final cartState = context.read<CartshopBloc>().state;
                          if (cartState.cartItems.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Your cart is empty. Please add items to proceed.'),
                              ),
                            );
                          } else {
                            final request = OrderRequest(
                                customerId: 2, totalPrice: 0.0, products: []);
                            BlocProvider.of<OrderBloc>(context)
                                .add(OrderEvent.placeOrder(request));
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                                return const OrderAcceptedWidget();
                              }),
                            );
                            BlocProvider.of<CartshopBloc>(context)
                                .add(const CartshopEvent.clearCart());
                          }
                        },
                        customerName: customer.name ?? 'NA',
                        customerId: customer.id.toString(),
                        customerAddress:
                            '${customer.street}, ${customer.city}, ${customer.state}' ??
                                'NA',
                        imgUrl:
                            'https://static.vecteezy.com/system/resources/thumbnails/002/002/403/small/man-with-beard-avatar-character-isolated-icon-free-vector.jpg',
                      );
                    },
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
