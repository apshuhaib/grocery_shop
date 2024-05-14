import 'package:e_commerce_test/domain/core/failures/main_failure.dart';
import 'package:e_commerce_test/domain/customer/customer_service.dart';
import 'package:e_commerce_test/domain/customer/model/customer_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_event.dart';
part 'customer_state.dart';
part 'customer_bloc.freezed.dart';

@injectable
class CustomerBloc extends Bloc<CustomerEvent, CustomerState> {
  final CustomerService _customerService;
  CustomerBloc(this._customerService) : super(CustomerState.initial()) {
    on<Initialize>((event, emit) async {
      final result = await _customerService.getAllCustomer();
      final state = result.fold(
        (MainFailure l) {
          return const CustomerState(
              customerResultData: [], isLoading: false, isError: false);
        },
        (CustomerResponse r) {
          return CustomerState(
              customerResultData: r.data, isLoading: false, isError: false);
        },
      );
      emit(state);
    });
  }
}
