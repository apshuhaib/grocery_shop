import 'package:e_commerce_test/domain/orders/order_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:e_commerce_test/domain/orders/model/order_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'order_event.dart';
part 'order_state.dart';
part 'order_bloc.freezed.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderService _orderService;
  OrderBloc(this._orderService) : super(const OrderState.initial()) {
    on<PlaceOrder>((event, emit) async {
      emit(const OrderState.loading());
      await Future.delayed(const Duration(seconds: 1), () async {
        final result = await _orderService.placeOrder(event.request);
        if (result.errorCode == 0) {
          final data = OrderResponse.fromJson(result.data);
          emit(OrderState.orderPlaced(data));
          print('success');
        } else {
          emit(OrderState.error(message: result.message));
        }
      });
    });
  }
}
