// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CouponEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(int total, String couponCode) applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(int total, String couponCode)? applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(int total, String couponCode)? applyCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CouponEvent value) $default, {
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CouponEvent value)? $default, {
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CouponEvent value)? $default, {
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponEventCopyWith<$Res> {
  factory $CouponEventCopyWith(
          CouponEvent value, $Res Function(CouponEvent) then) =
      _$CouponEventCopyWithImpl<$Res, CouponEvent>;
}

/// @nodoc
class _$CouponEventCopyWithImpl<$Res, $Val extends CouponEvent>
    implements $CouponEventCopyWith<$Res> {
  _$CouponEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CouponEventImplCopyWith<$Res> {
  factory _$$CouponEventImplCopyWith(
          _$CouponEventImpl value, $Res Function(_$CouponEventImpl) then) =
      __$$CouponEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CouponEventImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$CouponEventImpl>
    implements _$$CouponEventImplCopyWith<$Res> {
  __$$CouponEventImplCopyWithImpl(
      _$CouponEventImpl _value, $Res Function(_$CouponEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CouponEventImpl implements _CouponEvent {
  const _$CouponEventImpl();

  @override
  String toString() {
    return 'CouponEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CouponEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(int total, String couponCode) applyCoupon,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(int total, String couponCode)? applyCoupon,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(int total, String couponCode)? applyCoupon,
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
    TResult Function(_CouponEvent value) $default, {
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CouponEvent value)? $default, {
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CouponEvent value)? $default, {
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CouponEvent implements CouponEvent {
  const factory _CouponEvent() = _$CouponEventImpl;
}

/// @nodoc
abstract class _$$ApplyCouponImplCopyWith<$Res> {
  factory _$$ApplyCouponImplCopyWith(
          _$ApplyCouponImpl value, $Res Function(_$ApplyCouponImpl) then) =
      __$$ApplyCouponImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int total, String couponCode});
}

/// @nodoc
class __$$ApplyCouponImplCopyWithImpl<$Res>
    extends _$CouponEventCopyWithImpl<$Res, _$ApplyCouponImpl>
    implements _$$ApplyCouponImplCopyWith<$Res> {
  __$$ApplyCouponImplCopyWithImpl(
      _$ApplyCouponImpl _value, $Res Function(_$ApplyCouponImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? couponCode = null,
  }) {
    return _then(_$ApplyCouponImpl(
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ApplyCouponImpl implements _ApplyCoupon {
  _$ApplyCouponImpl(this.total, this.couponCode);

  @override
  final int total;
  @override
  final String couponCode;

  @override
  String toString() {
    return 'CouponEvent.applyCoupon(total: $total, couponCode: $couponCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplyCouponImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, total, couponCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplyCouponImplCopyWith<_$ApplyCouponImpl> get copyWith =>
      __$$ApplyCouponImplCopyWithImpl<_$ApplyCouponImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(int total, String couponCode) applyCoupon,
  }) {
    return applyCoupon(total, couponCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(int total, String couponCode)? applyCoupon,
  }) {
    return applyCoupon?.call(total, couponCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(int total, String couponCode)? applyCoupon,
    required TResult orElse(),
  }) {
    if (applyCoupon != null) {
      return applyCoupon(total, couponCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CouponEvent value) $default, {
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return applyCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CouponEvent value)? $default, {
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return applyCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CouponEvent value)? $default, {
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (applyCoupon != null) {
      return applyCoupon(this);
    }
    return orElse();
  }
}

abstract class _ApplyCoupon implements CouponEvent {
  factory _ApplyCoupon(final int total, final String couponCode) =
      _$ApplyCouponImpl;

  int get total;
  String get couponCode;
  @JsonKey(ignore: true)
  _$$ApplyCouponImplCopyWith<_$ApplyCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CouponState {
  bool get isloading => throw _privateConstructorUsedError;
  CouponModel? get coupon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CouponStateCopyWith<CouponState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponStateCopyWith<$Res> {
  factory $CouponStateCopyWith(
          CouponState value, $Res Function(CouponState) then) =
      _$CouponStateCopyWithImpl<$Res, CouponState>;
  @useResult
  $Res call({bool isloading, CouponModel? coupon});
}

/// @nodoc
class _$CouponStateCopyWithImpl<$Res, $Val extends CouponState>
    implements $CouponStateCopyWith<$Res> {
  _$CouponStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? coupon = freezed,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as CouponModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponStateImplCopyWith<$Res>
    implements $CouponStateCopyWith<$Res> {
  factory _$$CouponStateImplCopyWith(
          _$CouponStateImpl value, $Res Function(_$CouponStateImpl) then) =
      __$$CouponStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isloading, CouponModel? coupon});
}

/// @nodoc
class __$$CouponStateImplCopyWithImpl<$Res>
    extends _$CouponStateCopyWithImpl<$Res, _$CouponStateImpl>
    implements _$$CouponStateImplCopyWith<$Res> {
  __$$CouponStateImplCopyWithImpl(
      _$CouponStateImpl _value, $Res Function(_$CouponStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? coupon = freezed,
  }) {
    return _then(_$CouponStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as CouponModel?,
    ));
  }
}

/// @nodoc

class _$CouponStateImpl implements _CouponState {
  const _$CouponStateImpl({required this.isloading, this.coupon});

  @override
  final bool isloading;
  @override
  final CouponModel? coupon;

  @override
  String toString() {
    return 'CouponState(isloading: $isloading, coupon: $coupon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.coupon, coupon) || other.coupon == coupon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isloading, coupon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponStateImplCopyWith<_$CouponStateImpl> get copyWith =>
      __$$CouponStateImplCopyWithImpl<_$CouponStateImpl>(this, _$identity);
}

abstract class _CouponState implements CouponState {
  const factory _CouponState(
      {required final bool isloading,
      final CouponModel? coupon}) = _$CouponStateImpl;

  @override
  bool get isloading;
  @override
  CouponModel? get coupon;
  @override
  @JsonKey(ignore: true)
  _$$CouponStateImplCopyWith<_$CouponStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
