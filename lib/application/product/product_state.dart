part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    required List<ResultData> productResultData,
    required bool isLoading,
    required bool isError,
  }) = _ProductState;

  factory ProductState.initial() => const ProductState(
        productResultData: [],
        isLoading: false,
        isError: false,
      );
}
