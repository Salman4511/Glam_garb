// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_out_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckOutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() checkOut,
    required TResult Function(String id) selectAddress,
    required TResult Function(int total, String couponCode) applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? checkOut,
    TResult? Function(String id)? selectAddress,
    TResult? Function(int total, String couponCode)? applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? checkOut,
    TResult Function(String id)? selectAddress,
    TResult Function(int total, String couponCode)? applyCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CheckOutEvent value) $default, {
    required TResult Function(_CheckOut value) checkOut,
    required TResult Function(_SelectAddress value) selectAddress,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CheckOutEvent value)? $default, {
    TResult? Function(_CheckOut value)? checkOut,
    TResult? Function(_SelectAddress value)? selectAddress,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CheckOutEvent value)? $default, {
    TResult Function(_CheckOut value)? checkOut,
    TResult Function(_SelectAddress value)? selectAddress,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckOutEventCopyWith<$Res> {
  factory $CheckOutEventCopyWith(
          CheckOutEvent value, $Res Function(CheckOutEvent) then) =
      _$CheckOutEventCopyWithImpl<$Res, CheckOutEvent>;
}

/// @nodoc
class _$CheckOutEventCopyWithImpl<$Res, $Val extends CheckOutEvent>
    implements $CheckOutEventCopyWith<$Res> {
  _$CheckOutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckOutEventImplCopyWith<$Res> {
  factory _$$CheckOutEventImplCopyWith(
          _$CheckOutEventImpl value, $Res Function(_$CheckOutEventImpl) then) =
      __$$CheckOutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckOutEventImplCopyWithImpl<$Res>
    extends _$CheckOutEventCopyWithImpl<$Res, _$CheckOutEventImpl>
    implements _$$CheckOutEventImplCopyWith<$Res> {
  __$$CheckOutEventImplCopyWithImpl(
      _$CheckOutEventImpl _value, $Res Function(_$CheckOutEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckOutEventImpl implements _CheckOutEvent {
  const _$CheckOutEventImpl();

  @override
  String toString() {
    return 'CheckOutEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckOutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() checkOut,
    required TResult Function(String id) selectAddress,
    required TResult Function(int total, String couponCode) applyCoupon,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? checkOut,
    TResult? Function(String id)? selectAddress,
    TResult? Function(int total, String couponCode)? applyCoupon,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? checkOut,
    TResult Function(String id)? selectAddress,
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
    TResult Function(_CheckOutEvent value) $default, {
    required TResult Function(_CheckOut value) checkOut,
    required TResult Function(_SelectAddress value) selectAddress,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CheckOutEvent value)? $default, {
    TResult? Function(_CheckOut value)? checkOut,
    TResult? Function(_SelectAddress value)? selectAddress,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CheckOutEvent value)? $default, {
    TResult Function(_CheckOut value)? checkOut,
    TResult Function(_SelectAddress value)? selectAddress,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _CheckOutEvent implements CheckOutEvent {
  const factory _CheckOutEvent() = _$CheckOutEventImpl;
}

/// @nodoc
abstract class _$$CheckOutImplCopyWith<$Res> {
  factory _$$CheckOutImplCopyWith(
          _$CheckOutImpl value, $Res Function(_$CheckOutImpl) then) =
      __$$CheckOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckOutImplCopyWithImpl<$Res>
    extends _$CheckOutEventCopyWithImpl<$Res, _$CheckOutImpl>
    implements _$$CheckOutImplCopyWith<$Res> {
  __$$CheckOutImplCopyWithImpl(
      _$CheckOutImpl _value, $Res Function(_$CheckOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckOutImpl implements _CheckOut {
  _$CheckOutImpl();

  @override
  String toString() {
    return 'CheckOutEvent.checkOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() checkOut,
    required TResult Function(String id) selectAddress,
    required TResult Function(int total, String couponCode) applyCoupon,
  }) {
    return checkOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? checkOut,
    TResult? Function(String id)? selectAddress,
    TResult? Function(int total, String couponCode)? applyCoupon,
  }) {
    return checkOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? checkOut,
    TResult Function(String id)? selectAddress,
    TResult Function(int total, String couponCode)? applyCoupon,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CheckOutEvent value) $default, {
    required TResult Function(_CheckOut value) checkOut,
    required TResult Function(_SelectAddress value) selectAddress,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return checkOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CheckOutEvent value)? $default, {
    TResult? Function(_CheckOut value)? checkOut,
    TResult? Function(_SelectAddress value)? selectAddress,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return checkOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CheckOutEvent value)? $default, {
    TResult Function(_CheckOut value)? checkOut,
    TResult Function(_SelectAddress value)? selectAddress,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut(this);
    }
    return orElse();
  }
}

abstract class _CheckOut implements CheckOutEvent {
  factory _CheckOut() = _$CheckOutImpl;
}

/// @nodoc
abstract class _$$SelectAddressImplCopyWith<$Res> {
  factory _$$SelectAddressImplCopyWith(
          _$SelectAddressImpl value, $Res Function(_$SelectAddressImpl) then) =
      __$$SelectAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$SelectAddressImplCopyWithImpl<$Res>
    extends _$CheckOutEventCopyWithImpl<$Res, _$SelectAddressImpl>
    implements _$$SelectAddressImplCopyWith<$Res> {
  __$$SelectAddressImplCopyWithImpl(
      _$SelectAddressImpl _value, $Res Function(_$SelectAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$SelectAddressImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectAddressImpl implements _SelectAddress {
  _$SelectAddressImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'CheckOutEvent.selectAddress(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectAddressImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectAddressImplCopyWith<_$SelectAddressImpl> get copyWith =>
      __$$SelectAddressImplCopyWithImpl<_$SelectAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() checkOut,
    required TResult Function(String id) selectAddress,
    required TResult Function(int total, String couponCode) applyCoupon,
  }) {
    return selectAddress(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? checkOut,
    TResult? Function(String id)? selectAddress,
    TResult? Function(int total, String couponCode)? applyCoupon,
  }) {
    return selectAddress?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? checkOut,
    TResult Function(String id)? selectAddress,
    TResult Function(int total, String couponCode)? applyCoupon,
    required TResult orElse(),
  }) {
    if (selectAddress != null) {
      return selectAddress(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_CheckOutEvent value) $default, {
    required TResult Function(_CheckOut value) checkOut,
    required TResult Function(_SelectAddress value) selectAddress,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return selectAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CheckOutEvent value)? $default, {
    TResult? Function(_CheckOut value)? checkOut,
    TResult? Function(_SelectAddress value)? selectAddress,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return selectAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CheckOutEvent value)? $default, {
    TResult Function(_CheckOut value)? checkOut,
    TResult Function(_SelectAddress value)? selectAddress,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (selectAddress != null) {
      return selectAddress(this);
    }
    return orElse();
  }
}

abstract class _SelectAddress implements CheckOutEvent {
  factory _SelectAddress(final String id) = _$SelectAddressImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$SelectAddressImplCopyWith<_$SelectAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$CheckOutEventCopyWithImpl<$Res, _$ApplyCouponImpl>
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
    return 'CheckOutEvent.applyCoupon(total: $total, couponCode: $couponCode)';
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
    required TResult Function() checkOut,
    required TResult Function(String id) selectAddress,
    required TResult Function(int total, String couponCode) applyCoupon,
  }) {
    return applyCoupon(total, couponCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? checkOut,
    TResult? Function(String id)? selectAddress,
    TResult? Function(int total, String couponCode)? applyCoupon,
  }) {
    return applyCoupon?.call(total, couponCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? checkOut,
    TResult Function(String id)? selectAddress,
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
    TResult Function(_CheckOutEvent value) $default, {
    required TResult Function(_CheckOut value) checkOut,
    required TResult Function(_SelectAddress value) selectAddress,
    required TResult Function(_ApplyCoupon value) applyCoupon,
  }) {
    return applyCoupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_CheckOutEvent value)? $default, {
    TResult? Function(_CheckOut value)? checkOut,
    TResult? Function(_SelectAddress value)? selectAddress,
    TResult? Function(_ApplyCoupon value)? applyCoupon,
  }) {
    return applyCoupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_CheckOutEvent value)? $default, {
    TResult Function(_CheckOut value)? checkOut,
    TResult Function(_SelectAddress value)? selectAddress,
    TResult Function(_ApplyCoupon value)? applyCoupon,
    required TResult orElse(),
  }) {
    if (applyCoupon != null) {
      return applyCoupon(this);
    }
    return orElse();
  }
}

abstract class _ApplyCoupon implements CheckOutEvent {
  factory _ApplyCoupon(final int total, final String couponCode) =
      _$ApplyCouponImpl;

  int get total;
  String get couponCode;
  @JsonKey(ignore: true)
  _$$ApplyCouponImplCopyWith<_$ApplyCouponImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CheckOutState {
  bool get isloading => throw _privateConstructorUsedError;
  CheckOutModel? get checkOut => throw _privateConstructorUsedError;
  AddressSelectModel? get selectAdress => throw _privateConstructorUsedError;
  CouponModel? get coupon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckOutStateCopyWith<CheckOutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckOutStateCopyWith<$Res> {
  factory $CheckOutStateCopyWith(
          CheckOutState value, $Res Function(CheckOutState) then) =
      _$CheckOutStateCopyWithImpl<$Res, CheckOutState>;
  @useResult
  $Res call(
      {bool isloading,
      CheckOutModel? checkOut,
      AddressSelectModel? selectAdress,
      CouponModel? coupon});
}

/// @nodoc
class _$CheckOutStateCopyWithImpl<$Res, $Val extends CheckOutState>
    implements $CheckOutStateCopyWith<$Res> {
  _$CheckOutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? checkOut = freezed,
    Object? selectAdress = freezed,
    Object? coupon = freezed,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as CheckOutModel?,
      selectAdress: freezed == selectAdress
          ? _value.selectAdress
          : selectAdress // ignore: cast_nullable_to_non_nullable
              as AddressSelectModel?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as CouponModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckOutStateImplCopyWith<$Res>
    implements $CheckOutStateCopyWith<$Res> {
  factory _$$CheckOutStateImplCopyWith(
          _$CheckOutStateImpl value, $Res Function(_$CheckOutStateImpl) then) =
      __$$CheckOutStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      CheckOutModel? checkOut,
      AddressSelectModel? selectAdress,
      CouponModel? coupon});
}

/// @nodoc
class __$$CheckOutStateImplCopyWithImpl<$Res>
    extends _$CheckOutStateCopyWithImpl<$Res, _$CheckOutStateImpl>
    implements _$$CheckOutStateImplCopyWith<$Res> {
  __$$CheckOutStateImplCopyWithImpl(
      _$CheckOutStateImpl _value, $Res Function(_$CheckOutStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? checkOut = freezed,
    Object? selectAdress = freezed,
    Object? coupon = freezed,
  }) {
    return _then(_$CheckOutStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      checkOut: freezed == checkOut
          ? _value.checkOut
          : checkOut // ignore: cast_nullable_to_non_nullable
              as CheckOutModel?,
      selectAdress: freezed == selectAdress
          ? _value.selectAdress
          : selectAdress // ignore: cast_nullable_to_non_nullable
              as AddressSelectModel?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as CouponModel?,
    ));
  }
}

/// @nodoc

class _$CheckOutStateImpl implements _CheckOutState {
  const _$CheckOutStateImpl(
      {required this.isloading, this.checkOut, this.selectAdress, this.coupon});

  @override
  final bool isloading;
  @override
  final CheckOutModel? checkOut;
  @override
  final AddressSelectModel? selectAdress;
  @override
  final CouponModel? coupon;

  @override
  String toString() {
    return 'CheckOutState(isloading: $isloading, checkOut: $checkOut, selectAdress: $selectAdress, coupon: $coupon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckOutStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.checkOut, checkOut) ||
                other.checkOut == checkOut) &&
            (identical(other.selectAdress, selectAdress) ||
                other.selectAdress == selectAdress) &&
            (identical(other.coupon, coupon) || other.coupon == coupon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isloading, checkOut, selectAdress, coupon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckOutStateImplCopyWith<_$CheckOutStateImpl> get copyWith =>
      __$$CheckOutStateImplCopyWithImpl<_$CheckOutStateImpl>(this, _$identity);
}

abstract class _CheckOutState implements CheckOutState {
  const factory _CheckOutState(
      {required final bool isloading,
      final CheckOutModel? checkOut,
      final AddressSelectModel? selectAdress,
      final CouponModel? coupon}) = _$CheckOutStateImpl;

  @override
  bool get isloading;
  @override
  CheckOutModel? get checkOut;
  @override
  AddressSelectModel? get selectAdress;
  @override
  CouponModel? get coupon;
  @override
  @JsonKey(ignore: true)
  _$$CheckOutStateImplCopyWith<_$CheckOutStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
