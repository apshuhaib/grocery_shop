import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_test/domain/core/failures/main_failure.dart';
import 'package:e_commerce_test/domain/products/model/product_response.dart';
import 'package:e_commerce_test/domain/products/product_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductService _productService;
  ProductBloc(this._productService) : super(ProductState.initial()) {
    on<Initialize>((event, emit) async {
      //send Loading to ui
      emit(const ProductState(
        productResultData: [],
        isLoading: true,
        isError: false,
      ));
      //get data

      final _result = await _productService.getallProducts();
      final state = _result.fold((MainFailure l) {
        return const ProductState(
            productResultData: [], isLoading: false, isError: true);
      }, (ProductResponse r) {
        return ProductState(
          productResultData: r.data,
          isLoading: false,
          isError: false,
        );
      });
      emit(state);
    });
  }
}
