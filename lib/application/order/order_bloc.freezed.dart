// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  OrderRequest get request => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderRequest request) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderRequest request)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderRequest request)? placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceOrder value) placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceOrder value)? placeOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderEventCopyWith<OrderEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
  @useResult
  $Res call({OrderRequest request});
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_value.copyWith(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as OrderRequest,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceOrderImplCopyWith<$Res>
    implements $OrderEventCopyWith<$Res> {
  factory _$$PlaceOrderImplCopyWith(
          _$PlaceOrderImpl value, $Res Function(_$PlaceOrderImpl) then) =
      __$$PlaceOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderRequest request});
}

/// @nodoc
class __$$PlaceOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$PlaceOrderImpl>
    implements _$$PlaceOrderImplCopyWith<$Res> {
  __$$PlaceOrderImplCopyWithImpl(
      _$PlaceOrderImpl _value, $Res Function(_$PlaceOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$PlaceOrderImpl(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as OrderRequest,
    ));
  }
}

/// @nodoc

class _$PlaceOrderImpl implements PlaceOrder {
  const _$PlaceOrderImpl(this.request);

  @override
  final OrderRequest request;

  @override
  String toString() {
    return 'OrderEvent.placeOrder(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderImplCopyWith<_$PlaceOrderImpl> get copyWith =>
      __$$PlaceOrderImplCopyWithImpl<_$PlaceOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OrderRequest request) placeOrder,
  }) {
    return placeOrder(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OrderRequest request)? placeOrder,
  }) {
    return placeOrder?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OrderRequest request)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlaceOrder value) placeOrder,
  }) {
    return placeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlaceOrder value)? placeOrder,
  }) {
    return placeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlaceOrder value)? placeOrder,
    required TResult orElse(),
  }) {
    if (placeOrder != null) {
      return placeOrder(this);
    }
    return orElse();
  }
}

abstract class PlaceOrder implements OrderEvent {
  const factory PlaceOrder(final OrderRequest request) = _$PlaceOrderImpl;

  @override
  OrderRequest get request;
  @override
  @JsonKey(ignore: true)
  _$$PlaceOrderImplCopyWith<_$PlaceOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderResponse response) orderPlaced,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderResponse response)? orderPlaced,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderResponse response)? orderPlaced,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderInitial value) initial,
    required TResult Function(OrderPlaced value) orderPlaced,
    required TResult Function(OrderLoading value) loading,
    required TResult Function(OrderError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitial value)? initial,
    TResult? Function(OrderPlaced value)? orderPlaced,
    TResult? Function(OrderLoading value)? loading,
    TResult? Function(OrderError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitial value)? initial,
    TResult Function(OrderPlaced value)? orderPlaced,
    TResult Function(OrderLoading value)? loading,
    TResult Function(OrderError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OrderInitialImplCopyWith<$Res> {
  factory _$$OrderInitialImplCopyWith(
          _$OrderInitialImpl value, $Res Function(_$OrderInitialImpl) then) =
      __$$OrderInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderInitialImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderInitialImpl>
    implements _$$OrderInitialImplCopyWith<$Res> {
  __$$OrderInitialImplCopyWithImpl(
      _$OrderInitialImpl _value, $Res Function(_$OrderInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderInitialImpl implements OrderInitial {
  const _$OrderInitialImpl();

  @override
  String toString() {
    return 'OrderState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderResponse response) orderPlaced,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderResponse response)? orderPlaced,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderResponse response)? orderPlaced,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderInitial value) initial,
    required TResult Function(OrderPlaced value) orderPlaced,
    required TResult Function(OrderLoading value) loading,
    required TResult Function(OrderError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitial value)? initial,
    TResult? Function(OrderPlaced value)? orderPlaced,
    TResult? Function(OrderLoading value)? loading,
    TResult? Function(OrderError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitial value)? initial,
    TResult Function(OrderPlaced value)? orderPlaced,
    TResult Function(OrderLoading value)? loading,
    TResult Function(OrderError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OrderInitial implements OrderState {
  const factory OrderInitial() = _$OrderInitialImpl;
}

/// @nodoc
abstract class _$$OrderPlacedImplCopyWith<$Res> {
  factory _$$OrderPlacedImplCopyWith(
          _$OrderPlacedImpl value, $Res Function(_$OrderPlacedImpl) then) =
      __$$OrderPlacedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OrderResponse response});
}

/// @nodoc
class __$$OrderPlacedImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderPlacedImpl>
    implements _$$OrderPlacedImplCopyWith<$Res> {
  __$$OrderPlacedImplCopyWithImpl(
      _$OrderPlacedImpl _value, $Res Function(_$OrderPlacedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$OrderPlacedImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as OrderResponse,
    ));
  }
}

/// @nodoc

class _$OrderPlacedImpl implements OrderPlaced {
  const _$OrderPlacedImpl(this.response);

  @override
  final OrderResponse response;

  @override
  String toString() {
    return 'OrderState.orderPlaced(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderPlacedImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderPlacedImplCopyWith<_$OrderPlacedImpl> get copyWith =>
      __$$OrderPlacedImplCopyWithImpl<_$OrderPlacedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderResponse response) orderPlaced,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return orderPlaced(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderResponse response)? orderPlaced,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return orderPlaced?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderResponse response)? orderPlaced,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (orderPlaced != null) {
      return orderPlaced(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderInitial value) initial,
    required TResult Function(OrderPlaced value) orderPlaced,
    required TResult Function(OrderLoading value) loading,
    required TResult Function(OrderError value) error,
  }) {
    return orderPlaced(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitial value)? initial,
    TResult? Function(OrderPlaced value)? orderPlaced,
    TResult? Function(OrderLoading value)? loading,
    TResult? Function(OrderError value)? error,
  }) {
    return orderPlaced?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitial value)? initial,
    TResult Function(OrderPlaced value)? orderPlaced,
    TResult Function(OrderLoading value)? loading,
    TResult Function(OrderError value)? error,
    required TResult orElse(),
  }) {
    if (orderPlaced != null) {
      return orderPlaced(this);
    }
    return orElse();
  }
}

abstract class OrderPlaced implements OrderState {
  const factory OrderPlaced(final OrderResponse response) = _$OrderPlacedImpl;

  OrderResponse get response;
  @JsonKey(ignore: true)
  _$$OrderPlacedImplCopyWith<_$OrderPlacedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderLoadingImplCopyWith<$Res> {
  factory _$$OrderLoadingImplCopyWith(
          _$OrderLoadingImpl value, $Res Function(_$OrderLoadingImpl) then) =
      __$$OrderLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderLoadingImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderLoadingImpl>
    implements _$$OrderLoadingImplCopyWith<$Res> {
  __$$OrderLoadingImplCopyWithImpl(
      _$OrderLoadingImpl _value, $Res Function(_$OrderLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OrderLoadingImpl implements OrderLoading {
  const _$OrderLoadingImpl();

  @override
  String toString() {
    return 'OrderState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderResponse response) orderPlaced,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderResponse response)? orderPlaced,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderResponse response)? orderPlaced,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderInitial value) initial,
    required TResult Function(OrderPlaced value) orderPlaced,
    required TResult Function(OrderLoading value) loading,
    required TResult Function(OrderError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitial value)? initial,
    TResult? Function(OrderPlaced value)? orderPlaced,
    TResult? Function(OrderLoading value)? loading,
    TResult? Function(OrderError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitial value)? initial,
    TResult Function(OrderPlaced value)? orderPlaced,
    TResult Function(OrderLoading value)? loading,
    TResult Function(OrderError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class OrderLoading implements OrderState {
  const factory OrderLoading() = _$OrderLoadingImpl;
}

/// @nodoc
abstract class _$$OrderErrorImplCopyWith<$Res> {
  factory _$$OrderErrorImplCopyWith(
          _$OrderErrorImpl value, $Res Function(_$OrderErrorImpl) then) =
      __$$OrderErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OrderErrorImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderErrorImpl>
    implements _$$OrderErrorImplCopyWith<$Res> {
  __$$OrderErrorImplCopyWithImpl(
      _$OrderErrorImpl _value, $Res Function(_$OrderErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OrderErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OrderErrorImpl implements OrderError {
  const _$OrderErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'OrderState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderErrorImplCopyWith<_$OrderErrorImpl> get copyWith =>
      __$$OrderErrorImplCopyWithImpl<_$OrderErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OrderResponse response) orderPlaced,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(OrderResponse response)? orderPlaced,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OrderResponse response)? orderPlaced,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderInitial value) initial,
    required TResult Function(OrderPlaced value) orderPlaced,
    required TResult Function(OrderLoading value) loading,
    required TResult Function(OrderError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderInitial value)? initial,
    TResult? Function(OrderPlaced value)? orderPlaced,
    TResult? Function(OrderLoading value)? loading,
    TResult? Function(OrderError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderInitial value)? initial,
    TResult Function(OrderPlaced value)? orderPlaced,
    TResult Function(OrderLoading value)? loading,
    TResult Function(OrderError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OrderError implements OrderState {
  const factory OrderError({required final String message}) = _$OrderErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$OrderErrorImplCopyWith<_$OrderErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
