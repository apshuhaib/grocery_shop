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
            customerResultData: [],
            customerSearchResultData: [],
            isLoading: false,
            isError: false,
          );
        },
        (CustomerResponse r) {
          return CustomerState(
            customerResultData: r.data,
            customerSearchResultData: [],
            isLoading: false,
            isError: false,
          );
        },
      );
      emit(state);
    });

    //search1
    // on<SearchCustomer>((event, emit) async {
    //   final result = await _customerService.searchCustomer(
    //       customerQuery: event.customerQuery);
    //   final state = result.fold((MainFailure l) {
    //     return const CustomerState(
    //         customerResultData: [],
    //         customerSearchResultData: [],
    //         isLoading: false,
    //         isError: true);
    //   }, (CustomerResponse r) {
    //     return CustomerState(
    //         customerResultData: [],
    //         customerSearchResultData: r.data,
    //         isLoading: false,
    //         isError: false);
    //   });
    //   emit(state);
    // });

    // Search2
    on<SearchCustomer>((event, emit) async {
      if (event.customerQuery.isEmpty) {
        emit(state.copyWith(
          customerResultData: state.customerResultData,
          isLoading: false,
          isError: false,
        ));
      } else {
        final result = await _customerService.searchCustomer(
          customerQuery: event.customerQuery,
        );
        final newstate = result.fold(
          (MainFailure l) => state.copyWith(
            isLoading: false,
            isError: true,
          ),
          (CustomerResponse r) => state.copyWith(
            customerResultData: r.data,
            isLoading: false,
            isError: false,
          ),
        );
        emit(newstate);
      }
    });
  }
}
