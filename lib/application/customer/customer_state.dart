part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState({
    required List<CustomerResultData> customerResultData,
    required List<CustomerResultData> customerSearchResultData,
    required bool isLoading,
    required bool isError,
  }) = _CustomerState;

  factory CustomerState.initial() => const CustomerState(
        customerResultData: [],
        customerSearchResultData: [],
        isLoading: false,
        isError: false,
      );
}
