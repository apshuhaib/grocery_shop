// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartItem, BuildContext context)
        onAddToCart,
    required TResult Function(String productId) onRemovefromCart,
    required TResult Function() loadCart,
    required TResult Function() clearCart,
    required TResult Function() checkout,
    required TResult Function(CartModel cartItem) incrementCartItem,
    required TResult Function(CartModel cartItem) decrementCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult? Function(String productId)? onRemovefromCart,
    TResult? Function()? loadCart,
    TResult? Function()? clearCart,
    TResult? Function()? checkout,
    TResult? Function(CartModel cartItem)? incrementCartItem,
    TResult? Function(CartModel cartItem)? decrementCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult Function(String productId)? onRemovefromCart,
    TResult Function()? loadCart,
    TResult Function()? clearCart,
    TResult Function()? checkout,
    TResult Function(CartModel cartItem)? incrementCartItem,
    TResult Function(CartModel cartItem)? decrementCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAddToCart value) onAddToCart,
    required TResult Function(onRemovefromCart value) onRemovefromCart,
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(ClearCart value) clearCart,
    required TResult Function(Checkout value) checkout,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAddToCart value)? onAddToCart,
    TResult? Function(onRemovefromCart value)? onRemovefromCart,
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(ClearCart value)? clearCart,
    TResult? Function(Checkout value)? checkout,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAddToCart value)? onAddToCart,
    TResult Function(onRemovefromCart value)? onRemovefromCart,
    TResult Function(LoadCart value)? loadCart,
    TResult Function(ClearCart value)? clearCart,
    TResult Function(Checkout value)? checkout,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnAddToCartImplCopyWith<$Res> {
  factory _$$OnAddToCartImplCopyWith(
          _$OnAddToCartImpl value, $Res Function(_$OnAddToCartImpl) then) =
      __$$OnAddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel cartItem, BuildContext context});
}

/// @nodoc
class __$$OnAddToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$OnAddToCartImpl>
    implements _$$OnAddToCartImplCopyWith<$Res> {
  __$$OnAddToCartImplCopyWithImpl(
      _$OnAddToCartImpl _value, $Res Function(_$OnAddToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
    Object? context = null,
  }) {
    return _then(_$OnAddToCartImpl(
      null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartModel,
      null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$OnAddToCartImpl implements OnAddToCart {
  const _$OnAddToCartImpl(this.cartItem, this.context);

  @override
  final CartModel cartItem;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'CartEvent.onAddToCart(cartItem: $cartItem, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnAddToCartImpl &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnAddToCartImplCopyWith<_$OnAddToCartImpl> get copyWith =>
      __$$OnAddToCartImplCopyWithImpl<_$OnAddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartItem, BuildContext context)
        onAddToCart,
    required TResult Function(String productId) onRemovefromCart,
    required TResult Function() loadCart,
    required TResult Function() clearCart,
    required TResult Function() checkout,
    required TResult Function(CartModel cartItem) incrementCartItem,
    required TResult Function(CartModel cartItem) decrementCartItem,
  }) {
    return onAddToCart(cartItem, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult? Function(String productId)? onRemovefromCart,
    TResult? Function()? loadCart,
    TResult? Function()? clearCart,
    TResult? Function()? checkout,
    TResult? Function(CartModel cartItem)? incrementCartItem,
    TResult? Function(CartModel cartItem)? decrementCartItem,
  }) {
    return onAddToCart?.call(cartItem, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult Function(String productId)? onRemovefromCart,
    TResult Function()? loadCart,
    TResult Function()? clearCart,
    TResult Function()? checkout,
    TResult Function(CartModel cartItem)? incrementCartItem,
    TResult Function(CartModel cartItem)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (onAddToCart != null) {
      return onAddToCart(cartItem, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAddToCart value) onAddToCart,
    required TResult Function(onRemovefromCart value) onRemovefromCart,
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(ClearCart value) clearCart,
    required TResult Function(Checkout value) checkout,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
  }) {
    return onAddToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAddToCart value)? onAddToCart,
    TResult? Function(onRemovefromCart value)? onRemovefromCart,
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(ClearCart value)? clearCart,
    TResult? Function(Checkout value)? checkout,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
  }) {
    return onAddToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAddToCart value)? onAddToCart,
    TResult Function(onRemovefromCart value)? onRemovefromCart,
    TResult Function(LoadCart value)? loadCart,
    TResult Function(ClearCart value)? clearCart,
    TResult Function(Checkout value)? checkout,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (onAddToCart != null) {
      return onAddToCart(this);
    }
    return orElse();
  }
}

abstract class OnAddToCart implements CartEvent {
  const factory OnAddToCart(
      final CartModel cartItem, final BuildContext context) = _$OnAddToCartImpl;

  CartModel get cartItem;
  BuildContext get context;
  @JsonKey(ignore: true)
  _$$OnAddToCartImplCopyWith<_$OnAddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onRemovefromCartImplCopyWith<$Res> {
  factory _$$onRemovefromCartImplCopyWith(_$onRemovefromCartImpl value,
          $Res Function(_$onRemovefromCartImpl) then) =
      __$$onRemovefromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$onRemovefromCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$onRemovefromCartImpl>
    implements _$$onRemovefromCartImplCopyWith<$Res> {
  __$$onRemovefromCartImplCopyWithImpl(_$onRemovefromCartImpl _value,
      $Res Function(_$onRemovefromCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$onRemovefromCartImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onRemovefromCartImpl implements onRemovefromCart {
  const _$onRemovefromCartImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'CartEvent.onRemovefromCart(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onRemovefromCartImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$onRemovefromCartImplCopyWith<_$onRemovefromCartImpl> get copyWith =>
      __$$onRemovefromCartImplCopyWithImpl<_$onRemovefromCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartItem, BuildContext context)
        onAddToCart,
    required TResult Function(String productId) onRemovefromCart,
    required TResult Function() loadCart,
    required TResult Function() clearCart,
    required TResult Function() checkout,
    required TResult Function(CartModel cartItem) incrementCartItem,
    required TResult Function(CartModel cartItem) decrementCartItem,
  }) {
    return onRemovefromCart(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult? Function(String productId)? onRemovefromCart,
    TResult? Function()? loadCart,
    TResult? Function()? clearCart,
    TResult? Function()? checkout,
    TResult? Function(CartModel cartItem)? incrementCartItem,
    TResult? Function(CartModel cartItem)? decrementCartItem,
  }) {
    return onRemovefromCart?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult Function(String productId)? onRemovefromCart,
    TResult Function()? loadCart,
    TResult Function()? clearCart,
    TResult Function()? checkout,
    TResult Function(CartModel cartItem)? incrementCartItem,
    TResult Function(CartModel cartItem)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (onRemovefromCart != null) {
      return onRemovefromCart(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAddToCart value) onAddToCart,
    required TResult Function(onRemovefromCart value) onRemovefromCart,
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(ClearCart value) clearCart,
    required TResult Function(Checkout value) checkout,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
  }) {
    return onRemovefromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAddToCart value)? onAddToCart,
    TResult? Function(onRemovefromCart value)? onRemovefromCart,
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(ClearCart value)? clearCart,
    TResult? Function(Checkout value)? checkout,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
  }) {
    return onRemovefromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAddToCart value)? onAddToCart,
    TResult Function(onRemovefromCart value)? onRemovefromCart,
    TResult Function(LoadCart value)? loadCart,
    TResult Function(ClearCart value)? clearCart,
    TResult Function(Checkout value)? checkout,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (onRemovefromCart != null) {
      return onRemovefromCart(this);
    }
    return orElse();
  }
}

abstract class onRemovefromCart implements CartEvent {
  const factory onRemovefromCart(final String productId) =
      _$onRemovefromCartImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$onRemovefromCartImplCopyWith<_$onRemovefromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCartImplCopyWith<$Res> {
  factory _$$LoadCartImplCopyWith(
          _$LoadCartImpl value, $Res Function(_$LoadCartImpl) then) =
      __$$LoadCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$LoadCartImpl>
    implements _$$LoadCartImplCopyWith<$Res> {
  __$$LoadCartImplCopyWithImpl(
      _$LoadCartImpl _value, $Res Function(_$LoadCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCartImpl implements LoadCart {
  const _$LoadCartImpl();

  @override
  String toString() {
    return 'CartEvent.loadCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartItem, BuildContext context)
        onAddToCart,
    required TResult Function(String productId) onRemovefromCart,
    required TResult Function() loadCart,
    required TResult Function() clearCart,
    required TResult Function() checkout,
    required TResult Function(CartModel cartItem) incrementCartItem,
    required TResult Function(CartModel cartItem) decrementCartItem,
  }) {
    return loadCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult? Function(String productId)? onRemovefromCart,
    TResult? Function()? loadCart,
    TResult? Function()? clearCart,
    TResult? Function()? checkout,
    TResult? Function(CartModel cartItem)? incrementCartItem,
    TResult? Function(CartModel cartItem)? decrementCartItem,
  }) {
    return loadCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult Function(String productId)? onRemovefromCart,
    TResult Function()? loadCart,
    TResult Function()? clearCart,
    TResult Function()? checkout,
    TResult Function(CartModel cartItem)? incrementCartItem,
    TResult Function(CartModel cartItem)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAddToCart value) onAddToCart,
    required TResult Function(onRemovefromCart value) onRemovefromCart,
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(ClearCart value) clearCart,
    required TResult Function(Checkout value) checkout,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
  }) {
    return loadCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAddToCart value)? onAddToCart,
    TResult? Function(onRemovefromCart value)? onRemovefromCart,
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(ClearCart value)? clearCart,
    TResult? Function(Checkout value)? checkout,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
  }) {
    return loadCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAddToCart value)? onAddToCart,
    TResult Function(onRemovefromCart value)? onRemovefromCart,
    TResult Function(LoadCart value)? loadCart,
    TResult Function(ClearCart value)? clearCart,
    TResult Function(Checkout value)? checkout,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart(this);
    }
    return orElse();
  }
}

abstract class LoadCart implements CartEvent {
  const factory LoadCart() = _$LoadCartImpl;
}

/// @nodoc
abstract class _$$ClearCartImplCopyWith<$Res> {
  factory _$$ClearCartImplCopyWith(
          _$ClearCartImpl value, $Res Function(_$ClearCartImpl) then) =
      __$$ClearCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ClearCartImpl>
    implements _$$ClearCartImplCopyWith<$Res> {
  __$$ClearCartImplCopyWithImpl(
      _$ClearCartImpl _value, $Res Function(_$ClearCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCartImpl implements ClearCart {
  const _$ClearCartImpl();

  @override
  String toString() {
    return 'CartEvent.clearCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartItem, BuildContext context)
        onAddToCart,
    required TResult Function(String productId) onRemovefromCart,
    required TResult Function() loadCart,
    required TResult Function() clearCart,
    required TResult Function() checkout,
    required TResult Function(CartModel cartItem) incrementCartItem,
    required TResult Function(CartModel cartItem) decrementCartItem,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult? Function(String productId)? onRemovefromCart,
    TResult? Function()? loadCart,
    TResult? Function()? clearCart,
    TResult? Function()? checkout,
    TResult? Function(CartModel cartItem)? incrementCartItem,
    TResult? Function(CartModel cartItem)? decrementCartItem,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult Function(String productId)? onRemovefromCart,
    TResult Function()? loadCart,
    TResult Function()? clearCart,
    TResult Function()? checkout,
    TResult Function(CartModel cartItem)? incrementCartItem,
    TResult Function(CartModel cartItem)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAddToCart value) onAddToCart,
    required TResult Function(onRemovefromCart value) onRemovefromCart,
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(ClearCart value) clearCart,
    required TResult Function(Checkout value) checkout,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAddToCart value)? onAddToCart,
    TResult? Function(onRemovefromCart value)? onRemovefromCart,
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(ClearCart value)? clearCart,
    TResult? Function(Checkout value)? checkout,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAddToCart value)? onAddToCart,
    TResult Function(onRemovefromCart value)? onRemovefromCart,
    TResult Function(LoadCart value)? loadCart,
    TResult Function(ClearCart value)? clearCart,
    TResult Function(Checkout value)? checkout,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class ClearCart implements CartEvent {
  const factory ClearCart() = _$ClearCartImpl;
}

/// @nodoc
abstract class _$$CheckoutImplCopyWith<$Res> {
  factory _$$CheckoutImplCopyWith(
          _$CheckoutImpl value, $Res Function(_$CheckoutImpl) then) =
      __$$CheckoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckoutImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CheckoutImpl>
    implements _$$CheckoutImplCopyWith<$Res> {
  __$$CheckoutImplCopyWithImpl(
      _$CheckoutImpl _value, $Res Function(_$CheckoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckoutImpl implements Checkout {
  const _$CheckoutImpl();

  @override
  String toString() {
    return 'CartEvent.checkout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartItem, BuildContext context)
        onAddToCart,
    required TResult Function(String productId) onRemovefromCart,
    required TResult Function() loadCart,
    required TResult Function() clearCart,
    required TResult Function() checkout,
    required TResult Function(CartModel cartItem) incrementCartItem,
    required TResult Function(CartModel cartItem) decrementCartItem,
  }) {
    return checkout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult? Function(String productId)? onRemovefromCart,
    TResult? Function()? loadCart,
    TResult? Function()? clearCart,
    TResult? Function()? checkout,
    TResult? Function(CartModel cartItem)? incrementCartItem,
    TResult? Function(CartModel cartItem)? decrementCartItem,
  }) {
    return checkout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult Function(String productId)? onRemovefromCart,
    TResult Function()? loadCart,
    TResult Function()? clearCart,
    TResult Function()? checkout,
    TResult Function(CartModel cartItem)? incrementCartItem,
    TResult Function(CartModel cartItem)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAddToCart value) onAddToCart,
    required TResult Function(onRemovefromCart value) onRemovefromCart,
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(ClearCart value) clearCart,
    required TResult Function(Checkout value) checkout,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
  }) {
    return checkout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAddToCart value)? onAddToCart,
    TResult? Function(onRemovefromCart value)? onRemovefromCart,
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(ClearCart value)? clearCart,
    TResult? Function(Checkout value)? checkout,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
  }) {
    return checkout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAddToCart value)? onAddToCart,
    TResult Function(onRemovefromCart value)? onRemovefromCart,
    TResult Function(LoadCart value)? loadCart,
    TResult Function(ClearCart value)? clearCart,
    TResult Function(Checkout value)? checkout,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (checkout != null) {
      return checkout(this);
    }
    return orElse();
  }
}

abstract class Checkout implements CartEvent {
  const factory Checkout() = _$CheckoutImpl;
}

/// @nodoc
abstract class _$$IncrementCartItemImplCopyWith<$Res> {
  factory _$$IncrementCartItemImplCopyWith(_$IncrementCartItemImpl value,
          $Res Function(_$IncrementCartItemImpl) then) =
      __$$IncrementCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel cartItem});
}

/// @nodoc
class __$$IncrementCartItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$IncrementCartItemImpl>
    implements _$$IncrementCartItemImplCopyWith<$Res> {
  __$$IncrementCartItemImplCopyWithImpl(_$IncrementCartItemImpl _value,
      $Res Function(_$IncrementCartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
  }) {
    return _then(_$IncrementCartItemImpl(
      null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartModel,
    ));
  }
}

/// @nodoc

class _$IncrementCartItemImpl implements IncrementCartItem {
  const _$IncrementCartItemImpl(this.cartItem);

  @override
  final CartModel cartItem;

  @override
  String toString() {
    return 'CartEvent.incrementCartItem(cartItem: $cartItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementCartItemImpl &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementCartItemImplCopyWith<_$IncrementCartItemImpl> get copyWith =>
      __$$IncrementCartItemImplCopyWithImpl<_$IncrementCartItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartItem, BuildContext context)
        onAddToCart,
    required TResult Function(String productId) onRemovefromCart,
    required TResult Function() loadCart,
    required TResult Function() clearCart,
    required TResult Function() checkout,
    required TResult Function(CartModel cartItem) incrementCartItem,
    required TResult Function(CartModel cartItem) decrementCartItem,
  }) {
    return incrementCartItem(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult? Function(String productId)? onRemovefromCart,
    TResult? Function()? loadCart,
    TResult? Function()? clearCart,
    TResult? Function()? checkout,
    TResult? Function(CartModel cartItem)? incrementCartItem,
    TResult? Function(CartModel cartItem)? decrementCartItem,
  }) {
    return incrementCartItem?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult Function(String productId)? onRemovefromCart,
    TResult Function()? loadCart,
    TResult Function()? clearCart,
    TResult Function()? checkout,
    TResult Function(CartModel cartItem)? incrementCartItem,
    TResult Function(CartModel cartItem)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (incrementCartItem != null) {
      return incrementCartItem(cartItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAddToCart value) onAddToCart,
    required TResult Function(onRemovefromCart value) onRemovefromCart,
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(ClearCart value) clearCart,
    required TResult Function(Checkout value) checkout,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
  }) {
    return incrementCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAddToCart value)? onAddToCart,
    TResult? Function(onRemovefromCart value)? onRemovefromCart,
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(ClearCart value)? clearCart,
    TResult? Function(Checkout value)? checkout,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
  }) {
    return incrementCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAddToCart value)? onAddToCart,
    TResult Function(onRemovefromCart value)? onRemovefromCart,
    TResult Function(LoadCart value)? loadCart,
    TResult Function(ClearCart value)? clearCart,
    TResult Function(Checkout value)? checkout,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (incrementCartItem != null) {
      return incrementCartItem(this);
    }
    return orElse();
  }
}

abstract class IncrementCartItem implements CartEvent {
  const factory IncrementCartItem(final CartModel cartItem) =
      _$IncrementCartItemImpl;

  CartModel get cartItem;
  @JsonKey(ignore: true)
  _$$IncrementCartItemImplCopyWith<_$IncrementCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DecrementCartItemImplCopyWith<$Res> {
  factory _$$DecrementCartItemImplCopyWith(_$DecrementCartItemImpl value,
          $Res Function(_$DecrementCartItemImpl) then) =
      __$$DecrementCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel cartItem});
}

/// @nodoc
class __$$DecrementCartItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DecrementCartItemImpl>
    implements _$$DecrementCartItemImplCopyWith<$Res> {
  __$$DecrementCartItemImplCopyWithImpl(_$DecrementCartItemImpl _value,
      $Res Function(_$DecrementCartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
  }) {
    return _then(_$DecrementCartItemImpl(
      null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartModel,
    ));
  }
}

/// @nodoc

class _$DecrementCartItemImpl implements DecrementCartItem {
  const _$DecrementCartItemImpl(this.cartItem);

  @override
  final CartModel cartItem;

  @override
  String toString() {
    return 'CartEvent.decrementCartItem(cartItem: $cartItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementCartItemImpl &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecrementCartItemImplCopyWith<_$DecrementCartItemImpl> get copyWith =>
      __$$DecrementCartItemImplCopyWithImpl<_$DecrementCartItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel cartItem, BuildContext context)
        onAddToCart,
    required TResult Function(String productId) onRemovefromCart,
    required TResult Function() loadCart,
    required TResult Function() clearCart,
    required TResult Function() checkout,
    required TResult Function(CartModel cartItem) incrementCartItem,
    required TResult Function(CartModel cartItem) decrementCartItem,
  }) {
    return decrementCartItem(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult? Function(String productId)? onRemovefromCart,
    TResult? Function()? loadCart,
    TResult? Function()? clearCart,
    TResult? Function()? checkout,
    TResult? Function(CartModel cartItem)? incrementCartItem,
    TResult? Function(CartModel cartItem)? decrementCartItem,
  }) {
    return decrementCartItem?.call(cartItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel cartItem, BuildContext context)? onAddToCart,
    TResult Function(String productId)? onRemovefromCart,
    TResult Function()? loadCart,
    TResult Function()? clearCart,
    TResult Function()? checkout,
    TResult Function(CartModel cartItem)? incrementCartItem,
    TResult Function(CartModel cartItem)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (decrementCartItem != null) {
      return decrementCartItem(cartItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnAddToCart value) onAddToCart,
    required TResult Function(onRemovefromCart value) onRemovefromCart,
    required TResult Function(LoadCart value) loadCart,
    required TResult Function(ClearCart value) clearCart,
    required TResult Function(Checkout value) checkout,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
  }) {
    return decrementCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnAddToCart value)? onAddToCart,
    TResult? Function(onRemovefromCart value)? onRemovefromCart,
    TResult? Function(LoadCart value)? loadCart,
    TResult? Function(ClearCart value)? clearCart,
    TResult? Function(Checkout value)? checkout,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
  }) {
    return decrementCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnAddToCart value)? onAddToCart,
    TResult Function(onRemovefromCart value)? onRemovefromCart,
    TResult Function(LoadCart value)? loadCart,
    TResult Function(ClearCart value)? clearCart,
    TResult Function(Checkout value)? checkout,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    required TResult orElse(),
  }) {
    if (decrementCartItem != null) {
      return decrementCartItem(this);
    }
    return orElse();
  }
}

abstract class DecrementCartItem implements CartEvent {
  const factory DecrementCartItem(final CartModel cartItem) =
      _$DecrementCartItemImpl;

  CartModel get cartItem;
  @JsonKey(ignore: true)
  _$$DecrementCartItemImplCopyWith<_$DecrementCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartItems) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartItems)? loaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartItems)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartItems) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartItems)? loaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartItems)? loaded,
    TResult Function()? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CartState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartItems) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartItems)? loaded,
    TResult? Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartItems)? loaded,
    TResult Function()? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CartState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartModel> cartItems});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$LoadedImpl(
      null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<CartModel> cartItems) : _cartItems = cartItems;

  final List<CartModel> _cartItems;
  @override
  List<CartModel> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.loaded(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartItems) loaded,
    required TResult Function() error,
  }) {
    return loaded(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartItems)? loaded,
    TResult? Function()? error,
  }) {
    return loaded?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartItems)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CartState {
  const factory _Loaded(final List<CartModel> cartItems) = _$LoadedImpl;

  List<CartModel> get cartItems;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl();

  @override
  String toString() {
    return 'CartState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CartModel> cartItems) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<CartModel> cartItems)? loaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CartModel> cartItems)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CartState {
  const factory _Error() = _$ErrorImpl;
}
