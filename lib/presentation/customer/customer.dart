import 'package:e_commerce_test/application/customer/customer_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/presentation/customer/widgets/customer_card.dart';
import 'package:e_commerce_test/presentation/customer/widgets/customer_details.dart';
import 'package:e_commerce_test/presentation/main_page/main_page.dart';
import 'package:e_commerce_test/presentation/main_page/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerPage extends StatelessWidget {
  CustomerPage({super.key});

  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CustomerBloc>(context)
          .add(const CustomerEvent.initialize());
    });
    return Scaffold(
      appBar: AppBar(
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
                          final customer = state.customerResultData[index];
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return CustomerDetails(
                                name: customer.name!,
                                phone: customer.mobileNumber ?? 'NA',
                                email: customer.email ?? 'NA',
                                street1: customer.street ?? 'NA',
                                stree2: customer.streetTwo ?? 'NA',
                                state: customer.state ?? 'NA');
                          }));
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
