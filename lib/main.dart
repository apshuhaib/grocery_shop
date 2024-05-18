import 'package:e_commerce_test/application/cart_shop/cartshop_bloc.dart';
import 'package:e_commerce_test/application/customer/customer_bloc.dart';
import 'package:e_commerce_test/application/order/order_bloc.dart';
import 'package:e_commerce_test/application/product/product_bloc.dart';
import 'package:e_commerce_test/core/colors/colors.dart';
import 'package:e_commerce_test/domain/cart/cart_service.dart';
import 'package:e_commerce_test/domain/core/di/injectable.dart';
import 'package:e_commerce_test/presentation/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  final cartService = getIt<CartService>();
  await cartService.openBox();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProductBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CustomerBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<OrderBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<CartshopBloc>(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
            scaffoldBackgroundColor: backgroundColor,
            primarySwatch: Colors.blue,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            textTheme: const TextTheme(
              bodyLarge: TextStyle(color: Colors.black),
              bodyMedium: TextStyle(color: Colors.black),
            ),
            useMaterial3: true,
          ),
          home: MainPage()),
    );
  }
}
