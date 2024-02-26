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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String id, dynamic operation, String size)
        updateCartQuantity,
    required TResult Function(String id) deleteCartItem,
    required TResult Function(String id) cartToWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String id, dynamic operation, String size)?
        updateCartQuantity,
    TResult? Function(String id)? deleteCartItem,
    TResult? Function(String id)? cartToWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String id, dynamic operation, String size)?
        updateCartQuantity,
    TResult Function(String id)? deleteCartItem,
    TResult Function(String id)? cartToWishlist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CartEvent value) $default, {
    required TResult Function(_UpdateCartQuantity value) updateCartQuantity,
    required TResult Function(_DeleteCartItem value) deleteCartItem,
    required TResult Function(_CartToWishlist value) cartToWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CartEvent value)? $default, {
    TResult? Function(_UpdateCartQuantity value)? updateCartQuantity,
    TResult? Function(_DeleteCartItem value)? deleteCartItem,
    TResult? Function(_CartToWishlist value)? cartToWishlist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CartEvent value)? $default, {
    TResult Function(_UpdateCartQuantity value)? updateCartQuantity,
    TResult Function(_DeleteCartItem value)? deleteCartItem,
    TResult Function(_CartToWishlist value)? cartToWishlist,
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
abstract class _$$CartEventImplCopyWith<$Res> {
  factory _$$CartEventImplCopyWith(
          _$CartEventImpl value, $Res Function(_$CartEventImpl) then) =
      __$$CartEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartEventImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartEventImpl>
    implements _$$CartEventImplCopyWith<$Res> {
  __$$CartEventImplCopyWithImpl(
      _$CartEventImpl _value, $Res Function(_$CartEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartEventImpl implements _CartEvent {
  const _$CartEventImpl();

  @override
  String toString() {
    return 'CartEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String id, dynamic operation, String size)
        updateCartQuantity,
    required TResult Function(String id) deleteCartItem,
    required TResult Function(String id) cartToWishlist,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String id, dynamic operation, String size)?
        updateCartQuantity,
    TResult? Function(String id)? deleteCartItem,
    TResult? Function(String id)? cartToWishlist,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String id, dynamic operation, String size)?
        updateCartQuantity,
    TResult Function(String id)? deleteCartItem,
    TResult Function(String id)? cartToWishlist,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CartEvent value) $default, {
    required TResult Function(_UpdateCartQuantity value) updateCartQuantity,
    required TResult Function(_DeleteCartItem value) deleteCartItem,
    required TResult Function(_CartToWishlist value) cartToWishlist,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CartEvent value)? $default, {
    TResult? Function(_UpdateCartQuantity value)? updateCartQuantity,
    TResult? Function(_DeleteCartItem value)? deleteCartItem,
    TResult? Function(_CartToWishlist value)? cartToWishlist,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CartEvent value)? $default, {
    TResult Function(_UpdateCartQuantity value)? updateCartQuantity,
    TResult Function(_DeleteCartItem value)? deleteCartItem,
    TResult Function(_CartToWishlist value)? cartToWishlist,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CartEvent implements CartEvent {
  const factory _CartEvent() = _$CartEventImpl;
}

/// @nodoc
abstract class _$$UpdateCartQuantityImplCopyWith<$Res> {
  factory _$$UpdateCartQuantityImplCopyWith(_$UpdateCartQuantityImpl value,
          $Res Function(_$UpdateCartQuantityImpl) then) =
      __$$UpdateCartQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, dynamic operation, String size});
}

/// @nodoc
class __$$UpdateCartQuantityImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$UpdateCartQuantityImpl>
    implements _$$UpdateCartQuantityImplCopyWith<$Res> {
  __$$UpdateCartQuantityImplCopyWithImpl(_$UpdateCartQuantityImpl _value,
      $Res Function(_$UpdateCartQuantityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? operation = freezed,
    Object? size = null,
  }) {
    return _then(_$UpdateCartQuantityImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == operation
          ? _value.operation
          : operation // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateCartQuantityImpl implements _UpdateCartQuantity {
  _$UpdateCartQuantityImpl(this.id, this.operation, this.size);

  @override
  final String id;
  @override
  final dynamic operation;
  @override
  final String size;

  @override
  String toString() {
    return 'CartEvent.updateCartQuantity(id: $id, operation: $operation, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCartQuantityImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.operation, operation) &&
            (identical(other.size, size) || other.size == size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(operation), size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCartQuantityImplCopyWith<_$UpdateCartQuantityImpl> get copyWith =>
      __$$UpdateCartQuantityImplCopyWithImpl<_$UpdateCartQuantityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String id, dynamic operation, String size)
        updateCartQuantity,
    required TResult Function(String id) deleteCartItem,
    required TResult Function(String id) cartToWishlist,
  }) {
    return updateCartQuantity(id, operation, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String id, dynamic operation, String size)?
        updateCartQuantity,
    TResult? Function(String id)? deleteCartItem,
    TResult? Function(String id)? cartToWishlist,
  }) {
    return updateCartQuantity?.call(id, operation, size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String id, dynamic operation, String size)?
        updateCartQuantity,
    TResult Function(String id)? deleteCartItem,
    TResult Function(String id)? cartToWishlist,
    required TResult orElse(),
  }) {
    if (updateCartQuantity != null) {
      return updateCartQuantity(id, operation, size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CartEvent value) $default, {
    required TResult Function(_UpdateCartQuantity value) updateCartQuantity,
    required TResult Function(_DeleteCartItem value) deleteCartItem,
    required TResult Function(_CartToWishlist value) cartToWishlist,
  }) {
    return updateCartQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CartEvent value)? $default, {
    TResult? Function(_UpdateCartQuantity value)? updateCartQuantity,
    TResult? Function(_DeleteCartItem value)? deleteCartItem,
    TResult? Function(_CartToWishlist value)? cartToWishlist,
  }) {
    return updateCartQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CartEvent value)? $default, {
    TResult Function(_UpdateCartQuantity value)? updateCartQuantity,
    TResult Function(_DeleteCartItem value)? deleteCartItem,
    TResult Function(_CartToWishlist value)? cartToWishlist,
    required TResult orElse(),
  }) {
    if (updateCartQuantity != null) {
      return updateCartQuantity(this);
    }
    return orElse();
  }
}

abstract class _UpdateCartQuantity implements CartEvent {
  factory _UpdateCartQuantity(
          final String id, final dynamic operation, final String size) =
      _$UpdateCartQuantityImpl;

  String get id;
  dynamic get operation;
  String get size;
  @JsonKey(ignore: true)
  _$$UpdateCartQuantityImplCopyWith<_$UpdateCartQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCartItemImplCopyWith<$Res> {
  factory _$$DeleteCartItemImplCopyWith(_$DeleteCartItemImpl value,
          $Res Function(_$DeleteCartItemImpl) then) =
      __$$DeleteCartItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteCartItemImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteCartItemImpl>
    implements _$$DeleteCartItemImplCopyWith<$Res> {
  __$$DeleteCartItemImplCopyWithImpl(
      _$DeleteCartItemImpl _value, $Res Function(_$DeleteCartItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteCartItemImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteCartItemImpl implements _DeleteCartItem {
  _$DeleteCartItemImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CartEvent.deleteCartItem(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartItemImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartItemImplCopyWith<_$DeleteCartItemImpl> get copyWith =>
      __$$DeleteCartItemImplCopyWithImpl<_$DeleteCartItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String id, dynamic operation, String size)
        updateCartQuantity,
    required TResult Function(String id) deleteCartItem,
    required TResult Function(String id) cartToWishlist,
  }) {
    return deleteCartItem(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String id, dynamic operation, String size)?
        updateCartQuantity,
    TResult? Function(String id)? deleteCartItem,
    TResult? Function(String id)? cartToWishlist,
  }) {
    return deleteCartItem?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String id, dynamic operation, String size)?
        updateCartQuantity,
    TResult Function(String id)? deleteCartItem,
    TResult Function(String id)? cartToWishlist,
    required TResult orElse(),
  }) {
    if (deleteCartItem != null) {
      return deleteCartItem(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CartEvent value) $default, {
    required TResult Function(_UpdateCartQuantity value) updateCartQuantity,
    required TResult Function(_DeleteCartItem value) deleteCartItem,
    required TResult Function(_CartToWishlist value) cartToWishlist,
  }) {
    return deleteCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CartEvent value)? $default, {
    TResult? Function(_UpdateCartQuantity value)? updateCartQuantity,
    TResult? Function(_DeleteCartItem value)? deleteCartItem,
    TResult? Function(_CartToWishlist value)? cartToWishlist,
  }) {
    return deleteCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CartEvent value)? $default, {
    TResult Function(_UpdateCartQuantity value)? updateCartQuantity,
    TResult Function(_DeleteCartItem value)? deleteCartItem,
    TResult Function(_CartToWishlist value)? cartToWishlist,
    required TResult orElse(),
  }) {
    if (deleteCartItem != null) {
      return deleteCartItem(this);
    }
    return orElse();
  }
}

abstract class _DeleteCartItem implements CartEvent {
  factory _DeleteCartItem(final String id) = _$DeleteCartItemImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteCartItemImplCopyWith<_$DeleteCartItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartToWishlistImplCopyWith<$Res> {
  factory _$$CartToWishlistImplCopyWith(_$CartToWishlistImpl value,
          $Res Function(_$CartToWishlistImpl) then) =
      __$$CartToWishlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$CartToWishlistImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$CartToWishlistImpl>
    implements _$$CartToWishlistImplCopyWith<$Res> {
  __$$CartToWishlistImplCopyWithImpl(
      _$CartToWishlistImpl _value, $Res Function(_$CartToWishlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$CartToWishlistImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartToWishlistImpl implements _CartToWishlist {
  _$CartToWishlistImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CartEvent.cartToWishlist(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartToWishlistImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartToWishlistImplCopyWith<_$CartToWishlistImpl> get copyWith =>
      __$$CartToWishlistImplCopyWithImpl<_$CartToWishlistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String id, dynamic operation, String size)
        updateCartQuantity,
    required TResult Function(String id) deleteCartItem,
    required TResult Function(String id) cartToWishlist,
  }) {
    return cartToWishlist(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String id, dynamic operation, String size)?
        updateCartQuantity,
    TResult? Function(String id)? deleteCartItem,
    TResult? Function(String id)? cartToWishlist,
  }) {
    return cartToWishlist?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String id, dynamic operation, String size)?
        updateCartQuantity,
    TResult Function(String id)? deleteCartItem,
    TResult Function(String id)? cartToWishlist,
    required TResult orElse(),
  }) {
    if (cartToWishlist != null) {
      return cartToWishlist(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CartEvent value) $default, {
    required TResult Function(_UpdateCartQuantity value) updateCartQuantity,
    required TResult Function(_DeleteCartItem value) deleteCartItem,
    required TResult Function(_CartToWishlist value) cartToWishlist,
  }) {
    return cartToWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CartEvent value)? $default, {
    TResult? Function(_UpdateCartQuantity value)? updateCartQuantity,
    TResult? Function(_DeleteCartItem value)? deleteCartItem,
    TResult? Function(_CartToWishlist value)? cartToWishlist,
  }) {
    return cartToWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CartEvent value)? $default, {
    TResult Function(_UpdateCartQuantity value)? updateCartQuantity,
    TResult Function(_DeleteCartItem value)? deleteCartItem,
    TResult Function(_CartToWishlist value)? cartToWishlist,
    required TResult orElse(),
  }) {
    if (cartToWishlist != null) {
      return cartToWishlist(this);
    }
    return orElse();
  }
}

abstract class _CartToWishlist implements CartEvent {
  factory _CartToWishlist(final String id) = _$CartToWishlistImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$CartToWishlistImplCopyWith<_$CartToWishlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  bool get isloading => throw _privateConstructorUsedError;
  CartEditQuantityModel? get updateCart => throw _privateConstructorUsedError;
  CartDeleteModel? get delCart => throw _privateConstructorUsedError;
  CartToWishListModel? get cartToWishlist => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {bool isloading,
      CartEditQuantityModel? updateCart,
      CartDeleteModel? delCart,
      CartToWishListModel? cartToWishlist});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? updateCart = freezed,
    Object? delCart = freezed,
    Object? cartToWishlist = freezed,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      updateCart: freezed == updateCart
          ? _value.updateCart
          : updateCart // ignore: cast_nullable_to_non_nullable
              as CartEditQuantityModel?,
      delCart: freezed == delCart
          ? _value.delCart
          : delCart // ignore: cast_nullable_to_non_nullable
              as CartDeleteModel?,
      cartToWishlist: freezed == cartToWishlist
          ? _value.cartToWishlist
          : cartToWishlist // ignore: cast_nullable_to_non_nullable
              as CartToWishListModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      CartEditQuantityModel? updateCart,
      CartDeleteModel? delCart,
      CartToWishListModel? cartToWishlist});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? updateCart = freezed,
    Object? delCart = freezed,
    Object? cartToWishlist = freezed,
  }) {
    return _then(_$CartStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      updateCart: freezed == updateCart
          ? _value.updateCart
          : updateCart // ignore: cast_nullable_to_non_nullable
              as CartEditQuantityModel?,
      delCart: freezed == delCart
          ? _value.delCart
          : delCart // ignore: cast_nullable_to_non_nullable
              as CartDeleteModel?,
      cartToWishlist: freezed == cartToWishlist
          ? _value.cartToWishlist
          : cartToWishlist // ignore: cast_nullable_to_non_nullable
              as CartToWishListModel?,
    ));
  }
}

/// @nodoc

class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {required this.isloading,
      this.updateCart,
      this.delCart,
      this.cartToWishlist});

  @override
  final bool isloading;
  @override
  final CartEditQuantityModel? updateCart;
  @override
  final CartDeleteModel? delCart;
  @override
  final CartToWishListModel? cartToWishlist;

  @override
  String toString() {
    return 'CartState(isloading: $isloading, updateCart: $updateCart, delCart: $delCart, cartToWishlist: $cartToWishlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            const DeepCollectionEquality()
                .equals(other.updateCart, updateCart) &&
            const DeepCollectionEquality().equals(other.delCart, delCart) &&
            const DeepCollectionEquality()
                .equals(other.cartToWishlist, cartToWishlist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isloading,
      const DeepCollectionEquality().hash(updateCart),
      const DeepCollectionEquality().hash(delCart),
      const DeepCollectionEquality().hash(cartToWishlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {required final bool isloading,
      final CartEditQuantityModel? updateCart,
      final CartDeleteModel? delCart,
      final CartToWishListModel? cartToWishlist}) = _$CartStateImpl;

  @override
  bool get isloading;
  @override
  CartEditQuantityModel? get updateCart;
  @override
  CartDeleteModel? get delCart;
  @override
  CartToWishListModel? get cartToWishlist;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
