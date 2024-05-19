import 'package:e_commerce_test/application/order/order_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/domain/orders/model/order_model.dart';
import 'package:e_commerce_test/presentation/main_page/main_page.dart';
import 'package:e_commerce_test/presentation/main_page/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderAcceptedWidget extends StatelessWidget {
  final OrderRequest request;
  const OrderAcceptedWidget({super.key, required this.request});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<OrderBloc>(context).add(OrderEvent.placeOrder(request));
    });
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<OrderBloc, OrderState>(
          builder: (context, state) {
            if (state is OrderLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  color: kgreen,
                ),
              );
            } else if (state is OrderError) {
              return const Center(
                child: Text('Error occured'),
              );
            }
            return Stack(
              children: [
                Image.asset(
                  'assets/images/bg-white.jpg',
                  width: media.width,
                  height: media.height,
                ),
                Column(
                  children: [
                    const Spacer(),
                    Center(
                      child: Image.asset(
                        'assets/images/order-accepted.png',
                        width: media.width * 0.8,
                      ),
                    ),
                    const Text(
                      'Order Accepted',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kBlackColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Container(
                      width: media.width * 0.6,
                      height: 60,
                      decoration: BoxDecoration(
                          color: kgreen,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Track Order',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kwhiteColor,
                              fontSize: 20),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          changeIndexNotifier.value = 0;
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (context) {
                            return MainPage();
                          }), (route) => false);
                        },
                        child: const Text(
                          'Back to home',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kgreen,
                              fontSize: 20),
                        ))
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
