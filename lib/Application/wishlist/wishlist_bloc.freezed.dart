// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WishlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String id) addFavorite,
    required TResult Function() getFavorite,
    required TResult Function(String id) deleteFavorite,
    required TResult Function(String id) favToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String id)? addFavorite,
    TResult? Function()? getFavorite,
    TResult? Function(String id)? deleteFavorite,
    TResult? Function(String id)? favToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String id)? addFavorite,
    TResult Function()? getFavorite,
    TResult Function(String id)? deleteFavorite,
    TResult Function(String id)? favToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WishlistEvent value) $default, {
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_GetFavorite value) getFavorite,
    required TResult Function(_DeleteFavorite value) deleteFavorite,
    required TResult Function(_FavToCart value) favToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WishlistEvent value)? $default, {
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_GetFavorite value)? getFavorite,
    TResult? Function(_DeleteFavorite value)? deleteFavorite,
    TResult? Function(_FavToCart value)? favToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WishlistEvent value)? $default, {
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_GetFavorite value)? getFavorite,
    TResult Function(_DeleteFavorite value)? deleteFavorite,
    TResult Function(_FavToCart value)? favToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistEventCopyWith<$Res> {
  factory $WishlistEventCopyWith(
          WishlistEvent value, $Res Function(WishlistEvent) then) =
      _$WishlistEventCopyWithImpl<$Res, WishlistEvent>;
}

/// @nodoc
class _$WishlistEventCopyWithImpl<$Res, $Val extends WishlistEvent>
    implements $WishlistEventCopyWith<$Res> {
  _$WishlistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$WishlistEventImplCopyWith<$Res> {
  factory _$$WishlistEventImplCopyWith(
          _$WishlistEventImpl value, $Res Function(_$WishlistEventImpl) then) =
      __$$WishlistEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WishlistEventImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$WishlistEventImpl>
    implements _$$WishlistEventImplCopyWith<$Res> {
  __$$WishlistEventImplCopyWithImpl(
      _$WishlistEventImpl _value, $Res Function(_$WishlistEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WishlistEventImpl implements _WishlistEvent {
  const _$WishlistEventImpl();

  @override
  String toString() {
    return 'WishlistEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WishlistEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String id) addFavorite,
    required TResult Function() getFavorite,
    required TResult Function(String id) deleteFavorite,
    required TResult Function(String id) favToCart,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String id)? addFavorite,
    TResult? Function()? getFavorite,
    TResult? Function(String id)? deleteFavorite,
    TResult? Function(String id)? favToCart,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String id)? addFavorite,
    TResult Function()? getFavorite,
    TResult Function(String id)? deleteFavorite,
    TResult Function(String id)? favToCart,
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
    TResult Function(_WishlistEvent value) $default, {
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_GetFavorite value) getFavorite,
    required TResult Function(_DeleteFavorite value) deleteFavorite,
    required TResult Function(_FavToCart value) favToCart,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WishlistEvent value)? $default, {
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_GetFavorite value)? getFavorite,
    TResult? Function(_DeleteFavorite value)? deleteFavorite,
    TResult? Function(_FavToCart value)? favToCart,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WishlistEvent value)? $default, {
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_GetFavorite value)? getFavorite,
    TResult Function(_DeleteFavorite value)? deleteFavorite,
    TResult Function(_FavToCart value)? favToCart,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _WishlistEvent implements WishlistEvent {
  const factory _WishlistEvent() = _$WishlistEventImpl;
}

/// @nodoc
abstract class _$$AddFavoriteImplCopyWith<$Res> {
  factory _$$AddFavoriteImplCopyWith(
          _$AddFavoriteImpl value, $Res Function(_$AddFavoriteImpl) then) =
      __$$AddFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$AddFavoriteImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$AddFavoriteImpl>
    implements _$$AddFavoriteImplCopyWith<$Res> {
  __$$AddFavoriteImplCopyWithImpl(
      _$AddFavoriteImpl _value, $Res Function(_$AddFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AddFavoriteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddFavoriteImpl implements _AddFavorite {
  _$AddFavoriteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'WishlistEvent.addFavorite(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      __$$AddFavoriteImplCopyWithImpl<_$AddFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String id) addFavorite,
    required TResult Function() getFavorite,
    required TResult Function(String id) deleteFavorite,
    required TResult Function(String id) favToCart,
  }) {
    return addFavorite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String id)? addFavorite,
    TResult? Function()? getFavorite,
    TResult? Function(String id)? deleteFavorite,
    TResult? Function(String id)? favToCart,
  }) {
    return addFavorite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String id)? addFavorite,
    TResult Function()? getFavorite,
    TResult Function(String id)? deleteFavorite,
    TResult Function(String id)? favToCart,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WishlistEvent value) $default, {
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_GetFavorite value) getFavorite,
    required TResult Function(_DeleteFavorite value) deleteFavorite,
    required TResult Function(_FavToCart value) favToCart,
  }) {
    return addFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WishlistEvent value)? $default, {
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_GetFavorite value)? getFavorite,
    TResult? Function(_DeleteFavorite value)? deleteFavorite,
    TResult? Function(_FavToCart value)? favToCart,
  }) {
    return addFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WishlistEvent value)? $default, {
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_GetFavorite value)? getFavorite,
    TResult Function(_DeleteFavorite value)? deleteFavorite,
    TResult Function(_FavToCart value)? favToCart,
    required TResult orElse(),
  }) {
    if (addFavorite != null) {
      return addFavorite(this);
    }
    return orElse();
  }
}

abstract class _AddFavorite implements WishlistEvent {
  factory _AddFavorite(final String id) = _$AddFavoriteImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$AddFavoriteImplCopyWith<_$AddFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetFavoriteImplCopyWith<$Res> {
  factory _$$GetFavoriteImplCopyWith(
          _$GetFavoriteImpl value, $Res Function(_$GetFavoriteImpl) then) =
      __$$GetFavoriteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetFavoriteImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$GetFavoriteImpl>
    implements _$$GetFavoriteImplCopyWith<$Res> {
  __$$GetFavoriteImplCopyWithImpl(
      _$GetFavoriteImpl _value, $Res Function(_$GetFavoriteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetFavoriteImpl implements _GetFavorite {
  _$GetFavoriteImpl();

  @override
  String toString() {
    return 'WishlistEvent.getFavorite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetFavoriteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String id) addFavorite,
    required TResult Function() getFavorite,
    required TResult Function(String id) deleteFavorite,
    required TResult Function(String id) favToCart,
  }) {
    return getFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String id)? addFavorite,
    TResult? Function()? getFavorite,
    TResult? Function(String id)? deleteFavorite,
    TResult? Function(String id)? favToCart,
  }) {
    return getFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String id)? addFavorite,
    TResult Function()? getFavorite,
    TResult Function(String id)? deleteFavorite,
    TResult Function(String id)? favToCart,
    required TResult orElse(),
  }) {
    if (getFavorite != null) {
      return getFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WishlistEvent value) $default, {
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_GetFavorite value) getFavorite,
    required TResult Function(_DeleteFavorite value) deleteFavorite,
    required TResult Function(_FavToCart value) favToCart,
  }) {
    return getFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WishlistEvent value)? $default, {
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_GetFavorite value)? getFavorite,
    TResult? Function(_DeleteFavorite value)? deleteFavorite,
    TResult? Function(_FavToCart value)? favToCart,
  }) {
    return getFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WishlistEvent value)? $default, {
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_GetFavorite value)? getFavorite,
    TResult Function(_DeleteFavorite value)? deleteFavorite,
    TResult Function(_FavToCart value)? favToCart,
    required TResult orElse(),
  }) {
    if (getFavorite != null) {
      return getFavorite(this);
    }
    return orElse();
  }
}

abstract class _GetFavorite implements WishlistEvent {
  factory _GetFavorite() = _$GetFavoriteImpl;
}

/// @nodoc
abstract class _$$DeleteFavoriteImplCopyWith<$Res> {
  factory _$$DeleteFavoriteImplCopyWith(_$DeleteFavoriteImpl value,
          $Res Function(_$DeleteFavoriteImpl) then) =
      __$$DeleteFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteFavoriteImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$DeleteFavoriteImpl>
    implements _$$DeleteFavoriteImplCopyWith<$Res> {
  __$$DeleteFavoriteImplCopyWithImpl(
      _$DeleteFavoriteImpl _value, $Res Function(_$DeleteFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteFavoriteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteFavoriteImpl implements _DeleteFavorite {
  _$DeleteFavoriteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'WishlistEvent.deleteFavorite(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFavoriteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFavoriteImplCopyWith<_$DeleteFavoriteImpl> get copyWith =>
      __$$DeleteFavoriteImplCopyWithImpl<_$DeleteFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String id) addFavorite,
    required TResult Function() getFavorite,
    required TResult Function(String id) deleteFavorite,
    required TResult Function(String id) favToCart,
  }) {
    return deleteFavorite(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String id)? addFavorite,
    TResult? Function()? getFavorite,
    TResult? Function(String id)? deleteFavorite,
    TResult? Function(String id)? favToCart,
  }) {
    return deleteFavorite?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String id)? addFavorite,
    TResult Function()? getFavorite,
    TResult Function(String id)? deleteFavorite,
    TResult Function(String id)? favToCart,
    required TResult orElse(),
  }) {
    if (deleteFavorite != null) {
      return deleteFavorite(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WishlistEvent value) $default, {
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_GetFavorite value) getFavorite,
    required TResult Function(_DeleteFavorite value) deleteFavorite,
    required TResult Function(_FavToCart value) favToCart,
  }) {
    return deleteFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WishlistEvent value)? $default, {
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_GetFavorite value)? getFavorite,
    TResult? Function(_DeleteFavorite value)? deleteFavorite,
    TResult? Function(_FavToCart value)? favToCart,
  }) {
    return deleteFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WishlistEvent value)? $default, {
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_GetFavorite value)? getFavorite,
    TResult Function(_DeleteFavorite value)? deleteFavorite,
    TResult Function(_FavToCart value)? favToCart,
    required TResult orElse(),
  }) {
    if (deleteFavorite != null) {
      return deleteFavorite(this);
    }
    return orElse();
  }
}

abstract class _DeleteFavorite implements WishlistEvent {
  factory _DeleteFavorite(final String id) = _$DeleteFavoriteImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteFavoriteImplCopyWith<_$DeleteFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavToCartImplCopyWith<$Res> {
  factory _$$FavToCartImplCopyWith(
          _$FavToCartImpl value, $Res Function(_$FavToCartImpl) then) =
      __$$FavToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$FavToCartImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$FavToCartImpl>
    implements _$$FavToCartImplCopyWith<$Res> {
  __$$FavToCartImplCopyWithImpl(
      _$FavToCartImpl _value, $Res Function(_$FavToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$FavToCartImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavToCartImpl implements _FavToCart {
  _$FavToCartImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'WishlistEvent.favToCart(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavToCartImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavToCartImplCopyWith<_$FavToCartImpl> get copyWith =>
      __$$FavToCartImplCopyWithImpl<_$FavToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String id) addFavorite,
    required TResult Function() getFavorite,
    required TResult Function(String id) deleteFavorite,
    required TResult Function(String id) favToCart,
  }) {
    return favToCart(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String id)? addFavorite,
    TResult? Function()? getFavorite,
    TResult? Function(String id)? deleteFavorite,
    TResult? Function(String id)? favToCart,
  }) {
    return favToCart?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String id)? addFavorite,
    TResult Function()? getFavorite,
    TResult Function(String id)? deleteFavorite,
    TResult Function(String id)? favToCart,
    required TResult orElse(),
  }) {
    if (favToCart != null) {
      return favToCart(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WishlistEvent value) $default, {
    required TResult Function(_AddFavorite value) addFavorite,
    required TResult Function(_GetFavorite value) getFavorite,
    required TResult Function(_DeleteFavorite value) deleteFavorite,
    required TResult Function(_FavToCart value) favToCart,
  }) {
    return favToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WishlistEvent value)? $default, {
    TResult? Function(_AddFavorite value)? addFavorite,
    TResult? Function(_GetFavorite value)? getFavorite,
    TResult? Function(_DeleteFavorite value)? deleteFavorite,
    TResult? Function(_FavToCart value)? favToCart,
  }) {
    return favToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WishlistEvent value)? $default, {
    TResult Function(_AddFavorite value)? addFavorite,
    TResult Function(_GetFavorite value)? getFavorite,
    TResult Function(_DeleteFavorite value)? deleteFavorite,
    TResult Function(_FavToCart value)? favToCart,
    required TResult orElse(),
  }) {
    if (favToCart != null) {
      return favToCart(this);
    }
    return orElse();
  }
}

abstract class _FavToCart implements WishlistEvent {
  factory _FavToCart(final String id) = _$FavToCartImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$FavToCartImplCopyWith<_$FavToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishlistState {
  bool get isloading => throw _privateConstructorUsedError;
  WishListAddModel? get wishlist => throw _privateConstructorUsedError;
  WishListGetModel? get getWishlist => throw _privateConstructorUsedError;
  WishlistDeleteModel? get deleteWishlist => throw _privateConstructorUsedError;
  WishlistToCartModel? get wishlistToCart => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call(
      {bool isloading,
      WishListAddModel? wishlist,
      WishListGetModel? getWishlist,
      WishlistDeleteModel? deleteWishlist,
      WishlistToCartModel? wishlistToCart});
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? wishlist = freezed,
    Object? getWishlist = freezed,
    Object? deleteWishlist = freezed,
    Object? wishlistToCart = freezed,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      wishlist: freezed == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as WishListAddModel?,
      getWishlist: freezed == getWishlist
          ? _value.getWishlist
          : getWishlist // ignore: cast_nullable_to_non_nullable
              as WishListGetModel?,
      deleteWishlist: freezed == deleteWishlist
          ? _value.deleteWishlist
          : deleteWishlist // ignore: cast_nullable_to_non_nullable
              as WishlistDeleteModel?,
      wishlistToCart: freezed == wishlistToCart
          ? _value.wishlistToCart
          : wishlistToCart // ignore: cast_nullable_to_non_nullable
              as WishlistToCartModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistStateImplCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$WishlistStateImplCopyWith(
          _$WishlistStateImpl value, $Res Function(_$WishlistStateImpl) then) =
      __$$WishlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      WishListAddModel? wishlist,
      WishListGetModel? getWishlist,
      WishlistDeleteModel? deleteWishlist,
      WishlistToCartModel? wishlistToCart});
}

/// @nodoc
class __$$WishlistStateImplCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$WishlistStateImpl>
    implements _$$WishlistStateImplCopyWith<$Res> {
  __$$WishlistStateImplCopyWithImpl(
      _$WishlistStateImpl _value, $Res Function(_$WishlistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? wishlist = freezed,
    Object? getWishlist = freezed,
    Object? deleteWishlist = freezed,
    Object? wishlistToCart = freezed,
  }) {
    return _then(_$WishlistStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      wishlist: freezed == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as WishListAddModel?,
      getWishlist: freezed == getWishlist
          ? _value.getWishlist
          : getWishlist // ignore: cast_nullable_to_non_nullable
              as WishListGetModel?,
      deleteWishlist: freezed == deleteWishlist
          ? _value.deleteWishlist
          : deleteWishlist // ignore: cast_nullable_to_non_nullable
              as WishlistDeleteModel?,
      wishlistToCart: freezed == wishlistToCart
          ? _value.wishlistToCart
          : wishlistToCart // ignore: cast_nullable_to_non_nullable
              as WishlistToCartModel?,
    ));
  }
}

/// @nodoc

class _$WishlistStateImpl implements _WishlistState {
  const _$WishlistStateImpl(
      {required this.isloading,
      this.wishlist,
      this.getWishlist,
      this.deleteWishlist,
      this.wishlistToCart});

  @override
  final bool isloading;
  @override
  final WishListAddModel? wishlist;
  @override
  final WishListGetModel? getWishlist;
  @override
  final WishlistDeleteModel? deleteWishlist;
  @override
  final WishlistToCartModel? wishlistToCart;

  @override
  String toString() {
    return 'WishlistState(isloading: $isloading, wishlist: $wishlist, getWishlist: $getWishlist, deleteWishlist: $deleteWishlist, wishlistToCart: $wishlistToCart)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.wishlist, wishlist) ||
                other.wishlist == wishlist) &&
            (identical(other.getWishlist, getWishlist) ||
                other.getWishlist == getWishlist) &&
            (identical(other.deleteWishlist, deleteWishlist) ||
                other.deleteWishlist == deleteWishlist) &&
            (identical(other.wishlistToCart, wishlistToCart) ||
                other.wishlistToCart == wishlistToCart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, wishlist, getWishlist,
      deleteWishlist, wishlistToCart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      __$$WishlistStateImplCopyWithImpl<_$WishlistStateImpl>(this, _$identity);
}

abstract class _WishlistState implements WishlistState {
  const factory _WishlistState(
      {required final bool isloading,
      final WishListAddModel? wishlist,
      final WishListGetModel? getWishlist,
      final WishlistDeleteModel? deleteWishlist,
      final WishlistToCartModel? wishlistToCart}) = _$WishlistStateImpl;

  @override
  bool get isloading;
  @override
  WishListAddModel? get wishlist;
  @override
  WishListGetModel? get getWishlist;
  @override
  WishlistDeleteModel? get deleteWishlist;
  @override
  WishlistToCartModel? get wishlistToCart;
  @override
  @JsonKey(ignore: true)
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
