part of 'order_bloc.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = OrderInitial;
  const factory OrderState.orderPlaced(OrderResponse response) = OrderPlaced;
  const factory OrderState.loading() = OrderLoading;
  const factory OrderState.error({required String message}) = OrderError;
}
