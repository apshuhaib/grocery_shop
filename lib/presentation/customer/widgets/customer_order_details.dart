import 'package:e_commerce_test/application/cart_shop/cartshop_bloc.dart';
import 'package:e_commerce_test/application/customer/customer_bloc.dart';
import 'package:e_commerce_test/application/order/order_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/domain/cart/model/cart_model.dart';
import 'package:e_commerce_test/domain/orders/model/order_model.dart';
import 'package:e_commerce_test/presentation/cart/widgets/order_accepted_widget.dart';
import 'package:e_commerce_test/presentation/customer/widgets/customer_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerOrderPage extends StatelessWidget {
  CustomerOrderPage({super.key});
  List<CartModel> cartitems = [];

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CustomerBloc>(context)
          .add(const CustomerEvent.initialize());
      BlocProvider.of<CartshopBloc>(context).add(CartshopEvent.loadCartItems());
    });
    return SafeArea(
      child: Scaffold(
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
                            final cartState =
                                context.read<CartshopBloc>().state;

                            if (cartState.cartItems.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'Your cart is empty. Please add items to proceed.'),
                                ),
                              );
                            } else {
                              final id = state.customerResultData[index];
                              cartitems = cartState.cartItems;
                              final List<OrderProduct> products =
                                  cartState.cartItems.map((cartItem) {
                                return OrderProduct(
                                    productId: int.parse(cartItem.productId),
                                    quantity: cartItem.quantity,
                                    price: cartItem.price);
                              }).toList();

                              final request = OrderRequest(
                                  customerId: id.id!,
                                  totalPrice: cartState.totalPrice,
                                  products: products);
                              BlocProvider.of<OrderBloc>(context)
                                  .add(OrderEvent.placeOrder(request));
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context) {
                                  return OrderAcceptedWidget(
                                    request: request,
                                  );
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
      ),
    );
  }
}
