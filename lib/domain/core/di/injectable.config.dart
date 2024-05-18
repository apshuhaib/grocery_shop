// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:e_commerce_test/application/cart_shop/cartshop_bloc.dart'
    as _i9;
import 'package:e_commerce_test/application/customer/customer_bloc.dart'
    as _i12;
import 'package:e_commerce_test/application/order/order_bloc.dart' as _i13;
import 'package:e_commerce_test/application/product/product_bloc.dart' as _i14;
import 'package:e_commerce_test/domain/cart/cart_service.dart' as _i3;
import 'package:e_commerce_test/domain/customer/customer_service.dart' as _i5;
import 'package:e_commerce_test/domain/orders/order_service.dart' as _i7;
import 'package:e_commerce_test/domain/products/product_service.dart' as _i10;
import 'package:e_commerce_test/infrastructure/cart/cart_service_impl.dart'
    as _i4;
import 'package:e_commerce_test/infrastructure/customer/customer_service_impl.dart'
    as _i6;
import 'package:e_commerce_test/infrastructure/orders/order_service_impl.dart'
    as _i8;
import 'package:e_commerce_test/infrastructure/product/product_service_impl.dart'
    as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.CartService>(() => _i4.CartServiceimpl());
    gh.lazySingleton<_i5.CustomerService>(() => _i6.CustomerServiceimpl());
    gh.lazySingleton<_i7.OrderService>(() => _i8.OrderServiceimpl());
    gh.factory<_i9.CartshopBloc>(() => _i9.CartshopBloc(gh<_i3.CartService>()));
    gh.lazySingleton<_i10.ProductService>(() => _i11.ProductServiceimpl());
    gh.factory<_i12.CustomerBloc>(
        () => _i12.CustomerBloc(gh<_i5.CustomerService>()));
    gh.factory<_i13.OrderBloc>(() => _i13.OrderBloc(gh<_i7.OrderService>()));
    gh.factory<_i14.ProductBloc>(
        () => _i14.ProductBloc(gh<_i10.ProductService>()));
    return this;
  }
}
