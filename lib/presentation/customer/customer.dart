import 'package:e_commerce_test/application/customer/customer_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/core/constants.dart';
import 'package:e_commerce_test/core/strings.dart';
import 'package:e_commerce_test/presentation/customer/widgets/customer_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomerPage extends StatelessWidget {
  CustomerPage({super.key});
  // final List<String> defaultImage = [
  //   'https://www.shutterstock.com/image-photo/young-bearded-hipster-guy-wearing-260nw-2199108191.jpg',
  //   'https://r2.starryai.com/results/1003032515/44bf73d3-6d77-409f-927c-98a6ee5de9e3.webp',
  //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7bSxiKP_HJK91DTWH5uvRvG_cbBzHE0cheNveYTWVZA&s'
  // ];

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
            onPressed: () {},
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
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
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
          kHeight20,
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
                  child: Text(
                    'Error ',
                  ),
                );
              } else {
                return Expanded(
                  child: ListView.builder(
                    itemCount: state.customerResultData
                        .length, // Replace 10 with your actual item count
                    itemBuilder: (context, index) {
                      final customer = state.customerResultData[index];
                      // final imgUrl = index < shuffledImages.length
                      //     ? shuffledImages[index]
                      //     : '';
                      return CustomerCard(
                          customerName: customer.name ?? 'NA',
                          customerId: customer.id.toString(),
                          customerAddress:
                              '${customer.street},${customer.city},${customer.state}' ??
                                  'NA',
                          imgUrl:
                              'https://www.shutterstock.com/image-photo/young-bearded-hipster-guy-wearing-260nw-2199108191.jpg');
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
