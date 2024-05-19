part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.initialize() = Initialize;
  const factory CustomerEvent.searchCustomer({required String customerQuery}) =
      SearchCustomer;
  const factory CustomerEvent.getCustomer({required int customerIdQuery}) =
      GetCustomer;
}
