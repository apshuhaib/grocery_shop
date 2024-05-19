// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String customerQuery) searchCustomer,
    required TResult Function(int customerIdQuery) getCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String customerQuery)? searchCustomer,
    TResult? Function(int customerIdQuery)? getCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String customerQuery)? searchCustomer,
    TResult Function(int customerIdQuery)? getCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(GetCustomer value) getCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(GetCustomer value)? getCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(GetCustomer value)? getCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEventCopyWith<$Res> {
  factory $CustomerEventCopyWith(
          CustomerEvent value, $Res Function(CustomerEvent) then) =
      _$CustomerEventCopyWithImpl<$Res, CustomerEvent>;
}

/// @nodoc
class _$CustomerEventCopyWithImpl<$Res, $Val extends CustomerEvent>
    implements $CustomerEventCopyWith<$Res> {
  _$CustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'CustomerEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String customerQuery) searchCustomer,
    required TResult Function(int customerIdQuery) getCustomer,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String customerQuery)? searchCustomer,
    TResult? Function(int customerIdQuery)? getCustomer,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String customerQuery)? searchCustomer,
    TResult Function(int customerIdQuery)? getCustomer,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(GetCustomer value) getCustomer,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(GetCustomer value)? getCustomer,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(GetCustomer value)? getCustomer,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements CustomerEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$SearchCustomerImplCopyWith<$Res> {
  factory _$$SearchCustomerImplCopyWith(_$SearchCustomerImpl value,
          $Res Function(_$SearchCustomerImpl) then) =
      __$$SearchCustomerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String customerQuery});
}

/// @nodoc
class __$$SearchCustomerImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$SearchCustomerImpl>
    implements _$$SearchCustomerImplCopyWith<$Res> {
  __$$SearchCustomerImplCopyWithImpl(
      _$SearchCustomerImpl _value, $Res Function(_$SearchCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerQuery = null,
  }) {
    return _then(_$SearchCustomerImpl(
      customerQuery: null == customerQuery
          ? _value.customerQuery
          : customerQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchCustomerImpl implements SearchCustomer {
  const _$SearchCustomerImpl({required this.customerQuery});

  @override
  final String customerQuery;

  @override
  String toString() {
    return 'CustomerEvent.searchCustomer(customerQuery: $customerQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchCustomerImpl &&
            (identical(other.customerQuery, customerQuery) ||
                other.customerQuery == customerQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCustomerImplCopyWith<_$SearchCustomerImpl> get copyWith =>
      __$$SearchCustomerImplCopyWithImpl<_$SearchCustomerImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String customerQuery) searchCustomer,
    required TResult Function(int customerIdQuery) getCustomer,
  }) {
    return searchCustomer(customerQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String customerQuery)? searchCustomer,
    TResult? Function(int customerIdQuery)? getCustomer,
  }) {
    return searchCustomer?.call(customerQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String customerQuery)? searchCustomer,
    TResult Function(int customerIdQuery)? getCustomer,
    required TResult orElse(),
  }) {
    if (searchCustomer != null) {
      return searchCustomer(customerQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(GetCustomer value) getCustomer,
  }) {
    return searchCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(GetCustomer value)? getCustomer,
  }) {
    return searchCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(GetCustomer value)? getCustomer,
    required TResult orElse(),
  }) {
    if (searchCustomer != null) {
      return searchCustomer(this);
    }
    return orElse();
  }
}

abstract class SearchCustomer implements CustomerEvent {
  const factory SearchCustomer({required final String customerQuery}) =
      _$SearchCustomerImpl;

  String get customerQuery;
  @JsonKey(ignore: true)
  _$$SearchCustomerImplCopyWith<_$SearchCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCustomerImplCopyWith<$Res> {
  factory _$$GetCustomerImplCopyWith(
          _$GetCustomerImpl value, $Res Function(_$GetCustomerImpl) then) =
      __$$GetCustomerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int customerIdQuery});
}

/// @nodoc
class __$$GetCustomerImplCopyWithImpl<$Res>
    extends _$CustomerEventCopyWithImpl<$Res, _$GetCustomerImpl>
    implements _$$GetCustomerImplCopyWith<$Res> {
  __$$GetCustomerImplCopyWithImpl(
      _$GetCustomerImpl _value, $Res Function(_$GetCustomerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerIdQuery = null,
  }) {
    return _then(_$GetCustomerImpl(
      customerIdQuery: null == customerIdQuery
          ? _value.customerIdQuery
          : customerIdQuery // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCustomerImpl implements GetCustomer {
  const _$GetCustomerImpl({required this.customerIdQuery});

  @override
  final int customerIdQuery;

  @override
  String toString() {
    return 'CustomerEvent.getCustomer(customerIdQuery: $customerIdQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerImpl &&
            (identical(other.customerIdQuery, customerIdQuery) ||
                other.customerIdQuery == customerIdQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerIdQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerImplCopyWith<_$GetCustomerImpl> get copyWith =>
      __$$GetCustomerImplCopyWithImpl<_$GetCustomerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String customerQuery) searchCustomer,
    required TResult Function(int customerIdQuery) getCustomer,
  }) {
    return getCustomer(customerIdQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String customerQuery)? searchCustomer,
    TResult? Function(int customerIdQuery)? getCustomer,
  }) {
    return getCustomer?.call(customerIdQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String customerQuery)? searchCustomer,
    TResult Function(int customerIdQuery)? getCustomer,
    required TResult orElse(),
  }) {
    if (getCustomer != null) {
      return getCustomer(customerIdQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchCustomer value) searchCustomer,
    required TResult Function(GetCustomer value) getCustomer,
  }) {
    return getCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SearchCustomer value)? searchCustomer,
    TResult? Function(GetCustomer value)? getCustomer,
  }) {
    return getCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchCustomer value)? searchCustomer,
    TResult Function(GetCustomer value)? getCustomer,
    required TResult orElse(),
  }) {
    if (getCustomer != null) {
      return getCustomer(this);
    }
    return orElse();
  }
}

abstract class GetCustomer implements CustomerEvent {
  const factory GetCustomer({required final int customerIdQuery}) =
      _$GetCustomerImpl;

  int get customerIdQuery;
  @JsonKey(ignore: true)
  _$$GetCustomerImplCopyWith<_$GetCustomerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerState {
  List<CustomerResultData> get customerResultData =>
      throw _privateConstructorUsedError;
  List<CustomerResultData> get customerSearchResultData =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  CustomerModel? get singleCustomerData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerStateCopyWith<CustomerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res, CustomerState>;
  @useResult
  $Res call(
      {List<CustomerResultData> customerResultData,
      List<CustomerResultData> customerSearchResultData,
      bool isLoading,
      bool isError,
      CustomerModel? singleCustomerData});
}

/// @nodoc
class _$CustomerStateCopyWithImpl<$Res, $Val extends CustomerState>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerResultData = null,
    Object? customerSearchResultData = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? singleCustomerData = freezed,
  }) {
    return _then(_value.copyWith(
      customerResultData: null == customerResultData
          ? _value.customerResultData
          : customerResultData // ignore: cast_nullable_to_non_nullable
              as List<CustomerResultData>,
      customerSearchResultData: null == customerSearchResultData
          ? _value.customerSearchResultData
          : customerSearchResultData // ignore: cast_nullable_to_non_nullable
              as List<CustomerResultData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      singleCustomerData: freezed == singleCustomerData
          ? _value.singleCustomerData
          : singleCustomerData // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerStateImplCopyWith<$Res>
    implements $CustomerStateCopyWith<$Res> {
  factory _$$CustomerStateImplCopyWith(
          _$CustomerStateImpl value, $Res Function(_$CustomerStateImpl) then) =
      __$$CustomerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CustomerResultData> customerResultData,
      List<CustomerResultData> customerSearchResultData,
      bool isLoading,
      bool isError,
      CustomerModel? singleCustomerData});
}

/// @nodoc
class __$$CustomerStateImplCopyWithImpl<$Res>
    extends _$CustomerStateCopyWithImpl<$Res, _$CustomerStateImpl>
    implements _$$CustomerStateImplCopyWith<$Res> {
  __$$CustomerStateImplCopyWithImpl(
      _$CustomerStateImpl _value, $Res Function(_$CustomerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerResultData = null,
    Object? customerSearchResultData = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? singleCustomerData = freezed,
  }) {
    return _then(_$CustomerStateImpl(
      customerResultData: null == customerResultData
          ? _value._customerResultData
          : customerResultData // ignore: cast_nullable_to_non_nullable
              as List<CustomerResultData>,
      customerSearchResultData: null == customerSearchResultData
          ? _value._customerSearchResultData
          : customerSearchResultData // ignore: cast_nullable_to_non_nullable
              as List<CustomerResultData>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      singleCustomerData: freezed == singleCustomerData
          ? _value.singleCustomerData
          : singleCustomerData // ignore: cast_nullable_to_non_nullable
              as CustomerModel?,
    ));
  }
}

/// @nodoc

class _$CustomerStateImpl implements _CustomerState {
  const _$CustomerStateImpl(
      {required final List<CustomerResultData> customerResultData,
      required final List<CustomerResultData> customerSearchResultData,
      required this.isLoading,
      required this.isError,
      this.singleCustomerData})
      : _customerResultData = customerResultData,
        _customerSearchResultData = customerSearchResultData;

  final List<CustomerResultData> _customerResultData;
  @override
  List<CustomerResultData> get customerResultData {
    if (_customerResultData is EqualUnmodifiableListView)
      return _customerResultData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerResultData);
  }

  final List<CustomerResultData> _customerSearchResultData;
  @override
  List<CustomerResultData> get customerSearchResultData {
    if (_customerSearchResultData is EqualUnmodifiableListView)
      return _customerSearchResultData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customerSearchResultData);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final CustomerModel? singleCustomerData;

  @override
  String toString() {
    return 'CustomerState(customerResultData: $customerResultData, customerSearchResultData: $customerSearchResultData, isLoading: $isLoading, isError: $isError, singleCustomerData: $singleCustomerData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerStateImpl &&
            const DeepCollectionEquality()
                .equals(other._customerResultData, _customerResultData) &&
            const DeepCollectionEquality().equals(
                other._customerSearchResultData, _customerSearchResultData) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.singleCustomerData, singleCustomerData) ||
                other.singleCustomerData == singleCustomerData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_customerResultData),
      const DeepCollectionEquality().hash(_customerSearchResultData),
      isLoading,
      isError,
      singleCustomerData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerStateImplCopyWith<_$CustomerStateImpl> get copyWith =>
      __$$CustomerStateImplCopyWithImpl<_$CustomerStateImpl>(this, _$identity);
}

abstract class _CustomerState implements CustomerState {
  const factory _CustomerState(
      {required final List<CustomerResultData> customerResultData,
      required final List<CustomerResultData> customerSearchResultData,
      required final bool isLoading,
      required final bool isError,
      final CustomerModel? singleCustomerData}) = _$CustomerStateImpl;

  @override
  List<CustomerResultData> get customerResultData;
  @override
  List<CustomerResultData> get customerSearchResultData;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  CustomerModel? get singleCustomerData;
  @override
  @JsonKey(ignore: true)
  _$$CustomerStateImplCopyWith<_$CustomerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
