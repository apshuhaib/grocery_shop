// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cartshop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartshopEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel item) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function(CartModel item, String productId)
        incrementCartItem,
    required TResult Function(CartModel item, String productId)
        decrementCartItem,
    required TResult Function(CartModel item, int quantity) cartCount,
    required TResult Function() loadCartItems,
    required TResult Function() clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel item)? addToCart,
    TResult? Function(String productId)? removeFromCart,
    TResult? Function(CartModel item, String productId)? incrementCartItem,
    TResult? Function(CartModel item, String productId)? decrementCartItem,
    TResult? Function(CartModel item, int quantity)? cartCount,
    TResult? Function()? loadCartItems,
    TResult? Function()? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel item)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function(CartModel item, String productId)? incrementCartItem,
    TResult Function(CartModel item, String productId)? decrementCartItem,
    TResult Function(CartModel item, int quantity)? cartCount,
    TResult Function()? loadCartItems,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
    required TResult Function(CartCount value) cartCount,
    required TResult Function(LoadCartItems value) loadCartItems,
    required TResult Function(ClearCart value) clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
    TResult? Function(CartCount value)? cartCount,
    TResult? Function(LoadCartItems value)? loadCartItems,
    TResult? Function(ClearCart value)? clearCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    TResult Function(CartCount value)? cartCount,
    TResult Function(LoadCartItems value)? loadCartItems,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartshopEventCopyWith<$Res> {
  factory $CartshopEventCopyWith(
          CartshopEvent value, $Res Function(CartshopEvent) then) =
      _$CartshopEventCopyWithImpl<$Res, CartshopEvent>;
}

/// @nodoc
class _$CartshopEventCopyWithImpl<$Res, $Val extends CartshopEvent>
    implements $CartshopEventCopyWith<$Res> {
  _$CartshopEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel item});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CartshopEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
  }) {
    return _then(_$AddToCartImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartModel,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements AddToCart {
  const _$AddToCartImpl(this.item);

  @override
  final CartModel item;

  @override
  String toString() {
    return 'CartshopEvent.addToCart(item: $item)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.item, item) || other.item == item));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel item) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function(CartModel item, String productId)
        incrementCartItem,
    required TResult Function(CartModel item, String productId)
        decrementCartItem,
    required TResult Function(CartModel item, int quantity) cartCount,
    required TResult Function() loadCartItems,
    required TResult Function() clearCart,
  }) {
    return addToCart(item);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel item)? addToCart,
    TResult? Function(String productId)? removeFromCart,
    TResult? Function(CartModel item, String productId)? incrementCartItem,
    TResult? Function(CartModel item, String productId)? decrementCartItem,
    TResult? Function(CartModel item, int quantity)? cartCount,
    TResult? Function()? loadCartItems,
    TResult? Function()? clearCart,
  }) {
    return addToCart?.call(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel item)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function(CartModel item, String productId)? incrementCartItem,
    TResult Function(CartModel item, String productId)? decrementCartItem,
    TResult Function(CartModel item, int quantity)? cartCount,
    TResult Function()? loadCartItems,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(item);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
    required TResult Function(CartCount value) cartCount,
    required TResult Function(LoadCartItems value) loadCartItems,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
    TResult? Function(CartCount value)? cartCount,
    TResult? Function(LoadCartItems value)? loadCartItems,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    TResult Function(CartCount value)? cartCount,
    TResult Function(LoadCartItems value)? loadCartItems,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class AddToCart implements CartshopEvent {
  const factory AddToCart(final CartModel item) = _$AddToCartImpl;

  CartModel get item;
  @JsonKey(ignore: true)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromCartImplCopyWith<$Res> {
  factory _$$RemoveFromCartImplCopyWith(_$RemoveFromCartImpl value,
          $Res Function(_$RemoveFromCartImpl) then) =
      __$$RemoveFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$RemoveFromCartImplCopyWithImpl<$Res>
    extends _$CartshopEventCopyWithImpl<$Res, _$RemoveFromCartImpl>
    implements _$$RemoveFromCartImplCopyWith<$Res> {
  __$$RemoveFromCartImplCopyWithImpl(
      _$RemoveFromCartImpl _value, $Res Function(_$RemoveFromCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$RemoveFromCartImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFromCartImpl implements RemoveFromCart {
  const _$RemoveFromCartImpl(this.productId);

  @override
  final String productId;

  @override
  String toString() {
    return 'CartshopEvent.removeFromCart(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromCartImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      __$$RemoveFromCartImplCopyWithImpl<_$RemoveFromCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel item) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function(CartModel item, String productId)
        incrementCartItem,
    required TResult Function(CartModel item, String productId)
        decrementCartItem,
    required TResult Function(CartModel item, int quantity) cartCount,
    required TResult Function() loadCartItems,
    required TResult Function() clearCart,
  }) {
    return removeFromCart(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel item)? addToCart,
    TResult? Function(String productId)? removeFromCart,
    TResult? Function(CartModel item, String productId)? incrementCartItem,
    TResult? Function(CartModel item, String productId)? decrementCartItem,
    TResult? Function(CartModel item, int quantity)? cartCount,
    TResult? Function()? loadCartItems,
    TResult? Function()? clearCart,
  }) {
    return removeFromCart?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel item)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function(CartModel item, String productId)? incrementCartItem,
    TResult Function(CartModel item, String productId)? decrementCartItem,
    TResult Function(CartModel item, int quantity)? cartCount,
    TResult Function()? loadCartItems,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
    required TResult Function(CartCount value) cartCount,
    required TResult Function(LoadCartItems value) loadCartItems,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
    TResult? Function(CartCount value)? cartCount,
    TResult? Function(LoadCartItems value)? loadCartItems,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    TResult Function(CartCount value)? cartCount,
    TResult Function(LoadCartItems value)? loadCartItems,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class RemoveFromCart implements CartshopEvent {
  const factory RemoveFromCart(final String productId) = _$RemoveFromCartImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IncrementCartItemImplCopyWith<$Res> {
  factory _$$IncrementCartItemImplCopyWith(_$IncrementCartItemImpl value,
          $Res Function(_$IncrementCartItemImpl) then) =
      __$$IncrementCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel item, String productId});
}

/// @nodoc
class __$$IncrementCartItemImplCopyWithImpl<$Res>
    extends _$CartshopEventCopyWithImpl<$Res, _$IncrementCartItemImpl>
    implements _$$IncrementCartItemImplCopyWith<$Res> {
  __$$IncrementCartItemImplCopyWithImpl(_$IncrementCartItemImpl _value,
      $Res Function(_$IncrementCartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? productId = null,
  }) {
    return _then(_$IncrementCartItemImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartModel,
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IncrementCartItemImpl implements IncrementCartItem {
  const _$IncrementCartItemImpl(this.item, this.productId);

  @override
  final CartModel item;
  @override
  final String productId;

  @override
  String toString() {
    return 'CartshopEvent.incrementCartItem(item: $item, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncrementCartItemImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncrementCartItemImplCopyWith<_$IncrementCartItemImpl> get copyWith =>
      __$$IncrementCartItemImplCopyWithImpl<_$IncrementCartItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel item) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function(CartModel item, String productId)
        incrementCartItem,
    required TResult Function(CartModel item, String productId)
        decrementCartItem,
    required TResult Function(CartModel item, int quantity) cartCount,
    required TResult Function() loadCartItems,
    required TResult Function() clearCart,
  }) {
    return incrementCartItem(item, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel item)? addToCart,
    TResult? Function(String productId)? removeFromCart,
    TResult? Function(CartModel item, String productId)? incrementCartItem,
    TResult? Function(CartModel item, String productId)? decrementCartItem,
    TResult? Function(CartModel item, int quantity)? cartCount,
    TResult? Function()? loadCartItems,
    TResult? Function()? clearCart,
  }) {
    return incrementCartItem?.call(item, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel item)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function(CartModel item, String productId)? incrementCartItem,
    TResult Function(CartModel item, String productId)? decrementCartItem,
    TResult Function(CartModel item, int quantity)? cartCount,
    TResult Function()? loadCartItems,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (incrementCartItem != null) {
      return incrementCartItem(item, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
    required TResult Function(CartCount value) cartCount,
    required TResult Function(LoadCartItems value) loadCartItems,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return incrementCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
    TResult? Function(CartCount value)? cartCount,
    TResult? Function(LoadCartItems value)? loadCartItems,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return incrementCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    TResult Function(CartCount value)? cartCount,
    TResult Function(LoadCartItems value)? loadCartItems,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (incrementCartItem != null) {
      return incrementCartItem(this);
    }
    return orElse();
  }
}

abstract class IncrementCartItem implements CartshopEvent {
  const factory IncrementCartItem(
      final CartModel item, final String productId) = _$IncrementCartItemImpl;

  CartModel get item;
  String get productId;
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
  $Res call({CartModel item, String productId});
}

/// @nodoc
class __$$DecrementCartItemImplCopyWithImpl<$Res>
    extends _$CartshopEventCopyWithImpl<$Res, _$DecrementCartItemImpl>
    implements _$$DecrementCartItemImplCopyWith<$Res> {
  __$$DecrementCartItemImplCopyWithImpl(_$DecrementCartItemImpl _value,
      $Res Function(_$DecrementCartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? productId = null,
  }) {
    return _then(_$DecrementCartItemImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartModel,
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DecrementCartItemImpl implements DecrementCartItem {
  const _$DecrementCartItemImpl(this.item, this.productId);

  @override
  final CartModel item;
  @override
  final String productId;

  @override
  String toString() {
    return 'CartshopEvent.decrementCartItem(item: $item, productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecrementCartItemImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecrementCartItemImplCopyWith<_$DecrementCartItemImpl> get copyWith =>
      __$$DecrementCartItemImplCopyWithImpl<_$DecrementCartItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel item) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function(CartModel item, String productId)
        incrementCartItem,
    required TResult Function(CartModel item, String productId)
        decrementCartItem,
    required TResult Function(CartModel item, int quantity) cartCount,
    required TResult Function() loadCartItems,
    required TResult Function() clearCart,
  }) {
    return decrementCartItem(item, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel item)? addToCart,
    TResult? Function(String productId)? removeFromCart,
    TResult? Function(CartModel item, String productId)? incrementCartItem,
    TResult? Function(CartModel item, String productId)? decrementCartItem,
    TResult? Function(CartModel item, int quantity)? cartCount,
    TResult? Function()? loadCartItems,
    TResult? Function()? clearCart,
  }) {
    return decrementCartItem?.call(item, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel item)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function(CartModel item, String productId)? incrementCartItem,
    TResult Function(CartModel item, String productId)? decrementCartItem,
    TResult Function(CartModel item, int quantity)? cartCount,
    TResult Function()? loadCartItems,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (decrementCartItem != null) {
      return decrementCartItem(item, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
    required TResult Function(CartCount value) cartCount,
    required TResult Function(LoadCartItems value) loadCartItems,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return decrementCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
    TResult? Function(CartCount value)? cartCount,
    TResult? Function(LoadCartItems value)? loadCartItems,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return decrementCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    TResult Function(CartCount value)? cartCount,
    TResult Function(LoadCartItems value)? loadCartItems,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (decrementCartItem != null) {
      return decrementCartItem(this);
    }
    return orElse();
  }
}

abstract class DecrementCartItem implements CartshopEvent {
  const factory DecrementCartItem(
      final CartModel item, final String productId) = _$DecrementCartItemImpl;

  CartModel get item;
  String get productId;
  @JsonKey(ignore: true)
  _$$DecrementCartItemImplCopyWith<_$DecrementCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartCountImplCopyWith<$Res> {
  factory _$$CartCountImplCopyWith(
          _$CartCountImpl value, $Res Function(_$CartCountImpl) then) =
      __$$CartCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartModel item, int quantity});
}

/// @nodoc
class __$$CartCountImplCopyWithImpl<$Res>
    extends _$CartshopEventCopyWithImpl<$Res, _$CartCountImpl>
    implements _$$CartCountImplCopyWith<$Res> {
  __$$CartCountImplCopyWithImpl(
      _$CartCountImpl _value, $Res Function(_$CartCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? quantity = null,
  }) {
    return _then(_$CartCountImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as CartModel,
      null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartCountImpl implements CartCount {
  const _$CartCountImpl(this.item, this.quantity);

  @override
  final CartModel item;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartshopEvent.cartCount(item: $item, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartCountImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartCountImplCopyWith<_$CartCountImpl> get copyWith =>
      __$$CartCountImplCopyWithImpl<_$CartCountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel item) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function(CartModel item, String productId)
        incrementCartItem,
    required TResult Function(CartModel item, String productId)
        decrementCartItem,
    required TResult Function(CartModel item, int quantity) cartCount,
    required TResult Function() loadCartItems,
    required TResult Function() clearCart,
  }) {
    return cartCount(item, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel item)? addToCart,
    TResult? Function(String productId)? removeFromCart,
    TResult? Function(CartModel item, String productId)? incrementCartItem,
    TResult? Function(CartModel item, String productId)? decrementCartItem,
    TResult? Function(CartModel item, int quantity)? cartCount,
    TResult? Function()? loadCartItems,
    TResult? Function()? clearCart,
  }) {
    return cartCount?.call(item, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel item)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function(CartModel item, String productId)? incrementCartItem,
    TResult Function(CartModel item, String productId)? decrementCartItem,
    TResult Function(CartModel item, int quantity)? cartCount,
    TResult Function()? loadCartItems,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (cartCount != null) {
      return cartCount(item, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
    required TResult Function(CartCount value) cartCount,
    required TResult Function(LoadCartItems value) loadCartItems,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return cartCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
    TResult? Function(CartCount value)? cartCount,
    TResult? Function(LoadCartItems value)? loadCartItems,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return cartCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    TResult Function(CartCount value)? cartCount,
    TResult Function(LoadCartItems value)? loadCartItems,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (cartCount != null) {
      return cartCount(this);
    }
    return orElse();
  }
}

abstract class CartCount implements CartshopEvent {
  const factory CartCount(final CartModel item, final int quantity) =
      _$CartCountImpl;

  CartModel get item;
  int get quantity;
  @JsonKey(ignore: true)
  _$$CartCountImplCopyWith<_$CartCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadCartItemsImplCopyWith<$Res> {
  factory _$$LoadCartItemsImplCopyWith(
          _$LoadCartItemsImpl value, $Res Function(_$LoadCartItemsImpl) then) =
      __$$LoadCartItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCartItemsImplCopyWithImpl<$Res>
    extends _$CartshopEventCopyWithImpl<$Res, _$LoadCartItemsImpl>
    implements _$$LoadCartItemsImplCopyWith<$Res> {
  __$$LoadCartItemsImplCopyWithImpl(
      _$LoadCartItemsImpl _value, $Res Function(_$LoadCartItemsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCartItemsImpl implements LoadCartItems {
  const _$LoadCartItemsImpl();

  @override
  String toString() {
    return 'CartshopEvent.loadCartItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCartItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartModel item) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function(CartModel item, String productId)
        incrementCartItem,
    required TResult Function(CartModel item, String productId)
        decrementCartItem,
    required TResult Function(CartModel item, int quantity) cartCount,
    required TResult Function() loadCartItems,
    required TResult Function() clearCart,
  }) {
    return loadCartItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel item)? addToCart,
    TResult? Function(String productId)? removeFromCart,
    TResult? Function(CartModel item, String productId)? incrementCartItem,
    TResult? Function(CartModel item, String productId)? decrementCartItem,
    TResult? Function(CartModel item, int quantity)? cartCount,
    TResult? Function()? loadCartItems,
    TResult? Function()? clearCart,
  }) {
    return loadCartItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel item)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function(CartModel item, String productId)? incrementCartItem,
    TResult Function(CartModel item, String productId)? decrementCartItem,
    TResult Function(CartModel item, int quantity)? cartCount,
    TResult Function()? loadCartItems,
    TResult Function()? clearCart,
    required TResult orElse(),
  }) {
    if (loadCartItems != null) {
      return loadCartItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
    required TResult Function(CartCount value) cartCount,
    required TResult Function(LoadCartItems value) loadCartItems,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return loadCartItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
    TResult? Function(CartCount value)? cartCount,
    TResult? Function(LoadCartItems value)? loadCartItems,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return loadCartItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    TResult Function(CartCount value)? cartCount,
    TResult Function(LoadCartItems value)? loadCartItems,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (loadCartItems != null) {
      return loadCartItems(this);
    }
    return orElse();
  }
}

abstract class LoadCartItems implements CartshopEvent {
  const factory LoadCartItems() = _$LoadCartItemsImpl;
}

/// @nodoc
abstract class _$$ClearCartImplCopyWith<$Res> {
  factory _$$ClearCartImplCopyWith(
          _$ClearCartImpl value, $Res Function(_$ClearCartImpl) then) =
      __$$ClearCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCartImplCopyWithImpl<$Res>
    extends _$CartshopEventCopyWithImpl<$Res, _$ClearCartImpl>
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
    return 'CartshopEvent.clearCart()';
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
    required TResult Function(CartModel item) addToCart,
    required TResult Function(String productId) removeFromCart,
    required TResult Function(CartModel item, String productId)
        incrementCartItem,
    required TResult Function(CartModel item, String productId)
        decrementCartItem,
    required TResult Function(CartModel item, int quantity) cartCount,
    required TResult Function() loadCartItems,
    required TResult Function() clearCart,
  }) {
    return clearCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartModel item)? addToCart,
    TResult? Function(String productId)? removeFromCart,
    TResult? Function(CartModel item, String productId)? incrementCartItem,
    TResult? Function(CartModel item, String productId)? decrementCartItem,
    TResult? Function(CartModel item, int quantity)? cartCount,
    TResult? Function()? loadCartItems,
    TResult? Function()? clearCart,
  }) {
    return clearCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartModel item)? addToCart,
    TResult Function(String productId)? removeFromCart,
    TResult Function(CartModel item, String productId)? incrementCartItem,
    TResult Function(CartModel item, String productId)? decrementCartItem,
    TResult Function(CartModel item, int quantity)? cartCount,
    TResult Function()? loadCartItems,
    TResult Function()? clearCart,
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
    required TResult Function(AddToCart value) addToCart,
    required TResult Function(RemoveFromCart value) removeFromCart,
    required TResult Function(IncrementCartItem value) incrementCartItem,
    required TResult Function(DecrementCartItem value) decrementCartItem,
    required TResult Function(CartCount value) cartCount,
    required TResult Function(LoadCartItems value) loadCartItems,
    required TResult Function(ClearCart value) clearCart,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddToCart value)? addToCart,
    TResult? Function(RemoveFromCart value)? removeFromCart,
    TResult? Function(IncrementCartItem value)? incrementCartItem,
    TResult? Function(DecrementCartItem value)? decrementCartItem,
    TResult? Function(CartCount value)? cartCount,
    TResult? Function(LoadCartItems value)? loadCartItems,
    TResult? Function(ClearCart value)? clearCart,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddToCart value)? addToCart,
    TResult Function(RemoveFromCart value)? removeFromCart,
    TResult Function(IncrementCartItem value)? incrementCartItem,
    TResult Function(DecrementCartItem value)? decrementCartItem,
    TResult Function(CartCount value)? cartCount,
    TResult Function(LoadCartItems value)? loadCartItems,
    TResult Function(ClearCart value)? clearCart,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class ClearCart implements CartshopEvent {
  const factory ClearCart() = _$ClearCartImpl;
}

/// @nodoc
mixin _$CartshopState {
  List<CartModel> get cartItems => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get cartCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartshopStateCopyWith<CartshopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartshopStateCopyWith<$Res> {
  factory $CartshopStateCopyWith(
          CartshopState value, $Res Function(CartshopState) then) =
      _$CartshopStateCopyWithImpl<$Res, CartshopState>;
  @useResult
  $Res call(
      {List<CartModel> cartItems,
      double totalPrice,
      bool isLoading,
      bool isError,
      String errorMessage,
      int cartCount});
}

/// @nodoc
class _$CartshopStateCopyWithImpl<$Res, $Val extends CartshopState>
    implements $CartshopStateCopyWith<$Res> {
  _$CartshopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? totalPrice = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? cartCount = null,
  }) {
    return _then(_value.copyWith(
      cartItems: null == cartItems
          ? _value.cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartshopStateImplCopyWith<$Res>
    implements $CartshopStateCopyWith<$Res> {
  factory _$$CartshopStateImplCopyWith(
          _$CartshopStateImpl value, $Res Function(_$CartshopStateImpl) then) =
      __$$CartshopStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartModel> cartItems,
      double totalPrice,
      bool isLoading,
      bool isError,
      String errorMessage,
      int cartCount});
}

/// @nodoc
class __$$CartshopStateImplCopyWithImpl<$Res>
    extends _$CartshopStateCopyWithImpl<$Res, _$CartshopStateImpl>
    implements _$$CartshopStateImplCopyWith<$Res> {
  __$$CartshopStateImplCopyWithImpl(
      _$CartshopStateImpl _value, $Res Function(_$CartshopStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
    Object? totalPrice = null,
    Object? isLoading = null,
    Object? isError = null,
    Object? errorMessage = null,
    Object? cartCount = null,
  }) {
    return _then(_$CartshopStateImpl(
      cartItems: null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      cartCount: null == cartCount
          ? _value.cartCount
          : cartCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartshopStateImpl implements _CartshopState {
  const _$CartshopStateImpl(
      {required final List<CartModel> cartItems,
      required this.totalPrice,
      required this.isLoading,
      required this.isError,
      required this.errorMessage,
      required this.cartCount})
      : _cartItems = cartItems;

  final List<CartModel> _cartItems;
  @override
  List<CartModel> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  final double totalPrice;
  @override
  final bool isLoading;
  @override
  final bool isError;
  @override
  final String errorMessage;
  @override
  final int cartCount;

  @override
  String toString() {
    return 'CartshopState(cartItems: $cartItems, totalPrice: $totalPrice, isLoading: $isLoading, isError: $isError, errorMessage: $errorMessage, cartCount: $cartCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartshopStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.cartCount, cartCount) ||
                other.cartCount == cartCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartItems),
      totalPrice,
      isLoading,
      isError,
      errorMessage,
      cartCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartshopStateImplCopyWith<_$CartshopStateImpl> get copyWith =>
      __$$CartshopStateImplCopyWithImpl<_$CartshopStateImpl>(this, _$identity);
}

abstract class _CartshopState implements CartshopState {
  const factory _CartshopState(
      {required final List<CartModel> cartItems,
      required final double totalPrice,
      required final bool isLoading,
      required final bool isError,
      required final String errorMessage,
      required final int cartCount}) = _$CartshopStateImpl;

  @override
  List<CartModel> get cartItems;
  @override
  double get totalPrice;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  String get errorMessage;
  @override
  int get cartCount;
  @override
  @JsonKey(ignore: true)
  _$$CartshopStateImplCopyWith<_$CartshopStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
