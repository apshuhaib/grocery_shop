// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:e_commerce_test/application/cart/cart_bloc.dart' as _i7;
import 'package:e_commerce_test/application/customer/customer_bloc.dart'
    as _i10;
import 'package:e_commerce_test/application/product/product_bloc.dart' as _i11;
import 'package:e_commerce_test/domain/cart/cart_service.dart' as _i5;
import 'package:e_commerce_test/domain/customer/customer_service.dart' as _i3;
import 'package:e_commerce_test/domain/products/product_service.dart' as _i8;
import 'package:e_commerce_test/infrastructure/cart/cart_service_impl.dart'
    as _i6;
import 'package:e_commerce_test/infrastructure/customer/customer_service_impl.dart'
    as _i4;
import 'package:e_commerce_test/infrastructure/product/product_service_impl.dart'
    as _i9;
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
    gh.lazySingleton<_i3.CustomerService>(() => _i4.CustomerServiceimpl());
    gh.lazySingleton<_i5.CartService>(() => _i6.CartServiceImpl());
    gh.factory<_i7.CartBloc>(() => _i7.CartBloc(gh<_i5.CartService>()));
    gh.lazySingleton<_i8.ProductService>(() => _i9.ProductServiceimpl());
    gh.factory<_i10.CustomerBloc>(
        () => _i10.CustomerBloc(gh<_i3.CustomerService>()));
    gh.factory<_i11.ProductBloc>(
        () => _i11.ProductBloc(gh<_i8.ProductService>()));
    return this;
  }
}
