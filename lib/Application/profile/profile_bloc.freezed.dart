// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileEventImplCopyWith<$Res> {
  factory _$$ProfileEventImplCopyWith(
          _$ProfileEventImpl value, $Res Function(_$ProfileEventImpl) then) =
      __$$ProfileEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileEventImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileEventImpl>
    implements _$$ProfileEventImplCopyWith<$Res> {
  __$$ProfileEventImplCopyWithImpl(
      _$ProfileEventImpl _value, $Res Function(_$ProfileEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileEventImpl implements _ProfileEvent {
  const _$ProfileEventImpl();

  @override
  String toString() {
    return 'ProfileEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
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
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ProfileEvent implements ProfileEvent {
  const factory _ProfileEvent() = _$ProfileEventImpl;
}

/// @nodoc
abstract class _$$AddAddressImplCopyWith<$Res> {
  factory _$$AddAddressImplCopyWith(
          _$AddAddressImpl value, $Res Function(_$AddAddressImpl) then) =
      __$$AddAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String houseName,
      int phone,
      String city,
      String area,
      String state,
      int pinCode});
}

/// @nodoc
class __$$AddAddressImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$AddAddressImpl>
    implements _$$AddAddressImplCopyWith<$Res> {
  __$$AddAddressImplCopyWithImpl(
      _$AddAddressImpl _value, $Res Function(_$AddAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? houseName = null,
    Object? phone = null,
    Object? city = null,
    Object? area = null,
    Object? state = null,
    Object? pinCode = null,
  }) {
    return _then(_$AddAddressImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == houseName
          ? _value.houseName
          : houseName // ignore: cast_nullable_to_non_nullable
              as String,
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddAddressImpl implements _AddAddress {
  _$AddAddressImpl(this.name, this.houseName, this.phone, this.city, this.area,
      this.state, this.pinCode);

  @override
  final String name;
  @override
  final String houseName;
  @override
  final int phone;
  @override
  final String city;
  @override
  final String area;
  @override
  final String state;
  @override
  final int pinCode;

  @override
  String toString() {
    return 'ProfileEvent.addAddress(name: $name, houseName: $houseName, phone: $phone, city: $city, area: $area, state: $state, pinCode: $pinCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAddressImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.houseName, houseName) ||
                other.houseName == houseName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, houseName, phone, city, area, state, pinCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      __$$AddAddressImplCopyWithImpl<_$AddAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return addAddress(name, houseName, phone, city, area, state, pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return addAddress?.call(name, houseName, phone, city, area, state, pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(name, houseName, phone, city, area, state, pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(this);
    }
    return orElse();
  }
}

abstract class _AddAddress implements ProfileEvent {
  factory _AddAddress(
      final String name,
      final String houseName,
      final int phone,
      final String city,
      final String area,
      final String state,
      final int pinCode) = _$AddAddressImpl;

  String get name;
  String get houseName;
  int get phone;
  String get city;
  String get area;
  String get state;
  int get pinCode;
  @JsonKey(ignore: true)
  _$$AddAddressImplCopyWith<_$AddAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserDetailsImplCopyWith<$Res> {
  factory _$$UserDetailsImplCopyWith(
          _$UserDetailsImpl value, $Res Function(_$UserDetailsImpl) then) =
      __$$UserDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserDetailsImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UserDetailsImpl>
    implements _$$UserDetailsImplCopyWith<$Res> {
  __$$UserDetailsImplCopyWithImpl(
      _$UserDetailsImpl _value, $Res Function(_$UserDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserDetailsImpl implements _UserDetails {
  _$UserDetailsImpl();

  @override
  String toString() {
    return 'ProfileEvent.userDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return userDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return userDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) {
    if (userDetails != null) {
      return userDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return userDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return userDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (userDetails != null) {
      return userDetails(this);
    }
    return orElse();
  }
}

abstract class _UserDetails implements ProfileEvent {
  factory _UserDetails() = _$UserDetailsImpl;
}

/// @nodoc
abstract class _$$UserUpdateImplCopyWith<$Res> {
  factory _$$UserUpdateImplCopyWith(
          _$UserUpdateImpl value, $Res Function(_$UserUpdateImpl) then) =
      __$$UserUpdateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, dynamic mobile});
}

/// @nodoc
class __$$UserUpdateImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UserUpdateImpl>
    implements _$$UserUpdateImplCopyWith<$Res> {
  __$$UserUpdateImplCopyWithImpl(
      _$UserUpdateImpl _value, $Res Function(_$UserUpdateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? mobile = freezed,
  }) {
    return _then(_$UserUpdateImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UserUpdateImpl implements _UserUpdate {
  _$UserUpdateImpl(this.name, this.mobile);

  @override
  final String name;
  @override
  final dynamic mobile;

  @override
  String toString() {
    return 'ProfileEvent.userUpdate(name: $name, mobile: $mobile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.mobile, mobile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(mobile));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateImplCopyWith<_$UserUpdateImpl> get copyWith =>
      __$$UserUpdateImplCopyWithImpl<_$UserUpdateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return userUpdate(name, mobile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return userUpdate?.call(name, mobile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) {
    if (userUpdate != null) {
      return userUpdate(name, mobile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return userUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return userUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (userUpdate != null) {
      return userUpdate(this);
    }
    return orElse();
  }
}

abstract class _UserUpdate implements ProfileEvent {
  factory _UserUpdate(final String name, final dynamic mobile) =
      _$UserUpdateImpl;

  String get name;
  dynamic get mobile;
  @JsonKey(ignore: true)
  _$$UserUpdateImplCopyWith<_$UserUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAddressImplCopyWith<$Res> {
  factory _$$GetAddressImplCopyWith(
          _$GetAddressImpl value, $Res Function(_$GetAddressImpl) then) =
      __$$GetAddressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAddressImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetAddressImpl>
    implements _$$GetAddressImplCopyWith<$Res> {
  __$$GetAddressImplCopyWithImpl(
      _$GetAddressImpl _value, $Res Function(_$GetAddressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAddressImpl implements _GetAddress {
  _$GetAddressImpl();

  @override
  String toString() {
    return 'ProfileEvent.getAddress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAddressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return getAddress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return getAddress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return getAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return getAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (getAddress != null) {
      return getAddress(this);
    }
    return orElse();
  }
}

abstract class _GetAddress implements ProfileEvent {
  factory _GetAddress() = _$GetAddressImpl;
}

/// @nodoc
abstract class _$$DelAddressImplCopyWith<$Res> {
  factory _$$DelAddressImplCopyWith(
          _$DelAddressImpl value, $Res Function(_$DelAddressImpl) then) =
      __$$DelAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DelAddressImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$DelAddressImpl>
    implements _$$DelAddressImplCopyWith<$Res> {
  __$$DelAddressImplCopyWithImpl(
      _$DelAddressImpl _value, $Res Function(_$DelAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DelAddressImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DelAddressImpl implements _DelAddress {
  _$DelAddressImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProfileEvent.delAddress(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DelAddressImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DelAddressImplCopyWith<_$DelAddressImpl> get copyWith =>
      __$$DelAddressImplCopyWithImpl<_$DelAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return delAddress(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return delAddress?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) {
    if (delAddress != null) {
      return delAddress(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return delAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return delAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (delAddress != null) {
      return delAddress(this);
    }
    return orElse();
  }
}

abstract class _DelAddress implements ProfileEvent {
  factory _DelAddress(final String id) = _$DelAddressImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DelAddressImplCopyWith<_$DelAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelOrderImplCopyWith<$Res> {
  factory _$$CancelOrderImplCopyWith(
          _$CancelOrderImpl value, $Res Function(_$CancelOrderImpl) then) =
      __$$CancelOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class __$$CancelOrderImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$CancelOrderImpl>
    implements _$$CancelOrderImplCopyWith<$Res> {
  __$$CancelOrderImplCopyWithImpl(
      _$CancelOrderImpl _value, $Res Function(_$CancelOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
  }) {
    return _then(_$CancelOrderImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelOrderImpl implements _CancelOrder {
  _$CancelOrderImpl(this.orderId);

  @override
  final String orderId;

  @override
  String toString() {
    return 'ProfileEvent.cancelOrder(orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelOrderImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      __$$CancelOrderImplCopyWithImpl<_$CancelOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return cancelOrder(orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return cancelOrder?.call(orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return cancelOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return cancelOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (cancelOrder != null) {
      return cancelOrder(this);
    }
    return orElse();
  }
}

abstract class _CancelOrder implements ProfileEvent {
  factory _CancelOrder(final String orderId) = _$CancelOrderImpl;

  String get orderId;
  @JsonKey(ignore: true)
  _$$CancelOrderImplCopyWith<_$CancelOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletImplCopyWith<$Res> {
  factory _$$WalletImplCopyWith(
          _$WalletImpl value, $Res Function(_$WalletImpl) then) =
      __$$WalletImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WalletImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$WalletImpl>
    implements _$$WalletImplCopyWith<$Res> {
  __$$WalletImplCopyWithImpl(
      _$WalletImpl _value, $Res Function(_$WalletImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$WalletImpl implements _Wallet {
  _$WalletImpl();

  @override
  String toString() {
    return 'ProfileEvent.wallet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WalletImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return wallet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return wallet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) {
    if (wallet != null) {
      return wallet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return wallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return wallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (wallet != null) {
      return wallet(this);
    }
    return orElse();
  }
}

abstract class _Wallet implements ProfileEvent {
  factory _Wallet() = _$WalletImpl;
}

/// @nodoc
abstract class _$$CouponImplCopyWith<$Res> {
  factory _$$CouponImplCopyWith(
          _$CouponImpl value, $Res Function(_$CouponImpl) then) =
      __$$CouponImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CouponImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$CouponImpl>
    implements _$$CouponImplCopyWith<$Res> {
  __$$CouponImplCopyWithImpl(
      _$CouponImpl _value, $Res Function(_$CouponImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CouponImpl implements _Coupon {
  _$CouponImpl();

  @override
  String toString() {
    return 'ProfileEvent.coupon()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CouponImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return coupon();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return coupon?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) {
    if (coupon != null) {
      return coupon();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return coupon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return coupon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (coupon != null) {
      return coupon(this);
    }
    return orElse();
  }
}

abstract class _Coupon implements ProfileEvent {
  factory _Coupon() = _$CouponImpl;
}

/// @nodoc
abstract class _$$ChangePwdImplCopyWith<$Res> {
  factory _$$ChangePwdImplCopyWith(
          _$ChangePwdImpl value, $Res Function(_$ChangePwdImpl) then) =
      __$$ChangePwdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newPwd});
}

/// @nodoc
class __$$ChangePwdImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ChangePwdImpl>
    implements _$$ChangePwdImplCopyWith<$Res> {
  __$$ChangePwdImplCopyWithImpl(
      _$ChangePwdImpl _value, $Res Function(_$ChangePwdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newPwd = null,
  }) {
    return _then(_$ChangePwdImpl(
      null == newPwd
          ? _value.newPwd
          : newPwd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangePwdImpl implements _ChangePwd {
  _$ChangePwdImpl(this.newPwd);

  @override
  final String newPwd;

  @override
  String toString() {
    return 'ProfileEvent.changePwd(newPwd: $newPwd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePwdImpl &&
            (identical(other.newPwd, newPwd) || other.newPwd == newPwd));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPwd);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePwdImplCopyWith<_$ChangePwdImpl> get copyWith =>
      __$$ChangePwdImplCopyWithImpl<_$ChangePwdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return changePwd(newPwd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return changePwd?.call(newPwd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) {
    if (changePwd != null) {
      return changePwd(newPwd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return changePwd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return changePwd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (changePwd != null) {
      return changePwd(this);
    }
    return orElse();
  }
}

abstract class _ChangePwd implements ProfileEvent {
  factory _ChangePwd(final String newPwd) = _$ChangePwdImpl;

  String get newPwd;
  @JsonKey(ignore: true)
  _$$ChangePwdImplCopyWith<_$ChangePwdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReturnRequestImplCopyWith<$Res> {
  factory _$$ReturnRequestImplCopyWith(
          _$ReturnRequestImpl value, $Res Function(_$ReturnRequestImpl) then) =
      __$$ReturnRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, String reason});
}

/// @nodoc
class __$$ReturnRequestImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ReturnRequestImpl>
    implements _$$ReturnRequestImplCopyWith<$Res> {
  __$$ReturnRequestImplCopyWithImpl(
      _$ReturnRequestImpl _value, $Res Function(_$ReturnRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? reason = null,
  }) {
    return _then(_$ReturnRequestImpl(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReturnRequestImpl implements _ReturnRequest {
  _$ReturnRequestImpl(this.orderId, this.reason);

  @override
  final String orderId;
  @override
  final String reason;

  @override
  String toString() {
    return 'ProfileEvent.returnRequest(orderId: $orderId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnRequestImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnRequestImplCopyWith<_$ReturnRequestImpl> get copyWith =>
      __$$ReturnRequestImplCopyWithImpl<_$ReturnRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return returnRequest(orderId, reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return returnRequest?.call(orderId, reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) {
    if (returnRequest != null) {
      return returnRequest(orderId, reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return returnRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return returnRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (returnRequest != null) {
      return returnRequest(this);
    }
    return orElse();
  }
}

abstract class _ReturnRequest implements ProfileEvent {
  factory _ReturnRequest(final String orderId, final String reason) =
      _$ReturnRequestImpl;

  String get orderId;
  String get reason;
  @JsonKey(ignore: true)
  _$$ReturnRequestImplCopyWith<_$ReturnRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAddressImplCopyWith<$Res> {
  factory _$$UpdateAddressImplCopyWith(
          _$UpdateAddressImpl value, $Res Function(_$UpdateAddressImpl) then) =
      __$$UpdateAddressImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String id,
      String name,
      String houseName,
      int phone,
      String city,
      String area,
      String state,
      int pinCode});
}

/// @nodoc
class __$$UpdateAddressImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateAddressImpl>
    implements _$$UpdateAddressImplCopyWith<$Res> {
  __$$UpdateAddressImplCopyWithImpl(
      _$UpdateAddressImpl _value, $Res Function(_$UpdateAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? houseName = null,
    Object? phone = null,
    Object? city = null,
    Object? area = null,
    Object? state = null,
    Object? pinCode = null,
  }) {
    return _then(_$UpdateAddressImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == houseName
          ? _value.houseName
          : houseName // ignore: cast_nullable_to_non_nullable
              as String,
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      null == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateAddressImpl implements _UpdateAddress {
  _$UpdateAddressImpl(this.id, this.name, this.houseName, this.phone, this.city,
      this.area, this.state, this.pinCode);

  @override
  final String id;
  @override
  final String name;
  @override
  final String houseName;
  @override
  final int phone;
  @override
  final String city;
  @override
  final String area;
  @override
  final String state;
  @override
  final int pinCode;

  @override
  String toString() {
    return 'ProfileEvent.updateAddress(id: $id, name: $name, houseName: $houseName, phone: $phone, city: $city, area: $area, state: $state, pinCode: $pinCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.houseName, houseName) ||
                other.houseName == houseName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, houseName, phone, city, area, state, pinCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateAddressImplCopyWith<_$UpdateAddressImpl> get copyWith =>
      __$$UpdateAddressImplCopyWithImpl<_$UpdateAddressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String name, String houseName, int phone,
            String city, String area, String state, int pinCode)
        addAddress,
    required TResult Function() userDetails,
    required TResult Function(String name, dynamic mobile) userUpdate,
    required TResult Function() getAddress,
    required TResult Function(String id) delAddress,
    required TResult Function(String orderId) cancelOrder,
    required TResult Function() wallet,
    required TResult Function() coupon,
    required TResult Function(String newPwd) changePwd,
    required TResult Function(String orderId, String reason) returnRequest,
    required TResult Function(String id, String name, String houseName,
            int phone, String city, String area, String state, int pinCode)
        updateAddress,
  }) {
    return updateAddress(
        id, name, houseName, phone, city, area, state, pinCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult? Function()? userDetails,
    TResult? Function(String name, dynamic mobile)? userUpdate,
    TResult? Function()? getAddress,
    TResult? Function(String id)? delAddress,
    TResult? Function(String orderId)? cancelOrder,
    TResult? Function()? wallet,
    TResult? Function()? coupon,
    TResult? Function(String newPwd)? changePwd,
    TResult? Function(String orderId, String reason)? returnRequest,
    TResult? Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
  }) {
    return updateAddress?.call(
        id, name, houseName, phone, city, area, state, pinCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String name, String houseName, int phone, String city,
            String area, String state, int pinCode)?
        addAddress,
    TResult Function()? userDetails,
    TResult Function(String name, dynamic mobile)? userUpdate,
    TResult Function()? getAddress,
    TResult Function(String id)? delAddress,
    TResult Function(String orderId)? cancelOrder,
    TResult Function()? wallet,
    TResult Function()? coupon,
    TResult Function(String newPwd)? changePwd,
    TResult Function(String orderId, String reason)? returnRequest,
    TResult Function(String id, String name, String houseName, int phone,
            String city, String area, String state, int pinCode)?
        updateAddress,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(
          id, name, houseName, phone, city, area, state, pinCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileEvent value) $default, {
    required TResult Function(_AddAddress value) addAddress,
    required TResult Function(_UserDetails value) userDetails,
    required TResult Function(_UserUpdate value) userUpdate,
    required TResult Function(_GetAddress value) getAddress,
    required TResult Function(_DelAddress value) delAddress,
    required TResult Function(_CancelOrder value) cancelOrder,
    required TResult Function(_Wallet value) wallet,
    required TResult Function(_Coupon value) coupon,
    required TResult Function(_ChangePwd value) changePwd,
    required TResult Function(_ReturnRequest value) returnRequest,
    required TResult Function(_UpdateAddress value) updateAddress,
  }) {
    return updateAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileEvent value)? $default, {
    TResult? Function(_AddAddress value)? addAddress,
    TResult? Function(_UserDetails value)? userDetails,
    TResult? Function(_UserUpdate value)? userUpdate,
    TResult? Function(_GetAddress value)? getAddress,
    TResult? Function(_DelAddress value)? delAddress,
    TResult? Function(_CancelOrder value)? cancelOrder,
    TResult? Function(_Wallet value)? wallet,
    TResult? Function(_Coupon value)? coupon,
    TResult? Function(_ChangePwd value)? changePwd,
    TResult? Function(_ReturnRequest value)? returnRequest,
    TResult? Function(_UpdateAddress value)? updateAddress,
  }) {
    return updateAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileEvent value)? $default, {
    TResult Function(_AddAddress value)? addAddress,
    TResult Function(_UserDetails value)? userDetails,
    TResult Function(_UserUpdate value)? userUpdate,
    TResult Function(_GetAddress value)? getAddress,
    TResult Function(_DelAddress value)? delAddress,
    TResult Function(_CancelOrder value)? cancelOrder,
    TResult Function(_Wallet value)? wallet,
    TResult Function(_Coupon value)? coupon,
    TResult Function(_ChangePwd value)? changePwd,
    TResult Function(_ReturnRequest value)? returnRequest,
    TResult Function(_UpdateAddress value)? updateAddress,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(this);
    }
    return orElse();
  }
}

abstract class _UpdateAddress implements ProfileEvent {
  factory _UpdateAddress(
      final String id,
      final String name,
      final String houseName,
      final int phone,
      final String city,
      final String area,
      final String state,
      final int pinCode) = _$UpdateAddressImpl;

  String get id;
  String get name;
  String get houseName;
  int get phone;
  String get city;
  String get area;
  String get state;
  int get pinCode;
  @JsonKey(ignore: true)
  _$$UpdateAddressImplCopyWith<_$UpdateAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  bool get isloading => throw _privateConstructorUsedError;
  AdressAddModel? get addAddress => throw _privateConstructorUsedError;
  MyAccountModel? get myAccountData => throw _privateConstructorUsedError;
  UserUpdateModel? get updateUser => throw _privateConstructorUsedError;
  AddressGetModel? get getAddress => throw _privateConstructorUsedError;
  AddressUpdateModel? get updateAddress => throw _privateConstructorUsedError;
  AddressDeleteModel? get delAddress => throw _privateConstructorUsedError;
  OrderCancelModel? get cancelOrder => throw _privateConstructorUsedError;
  WalletGetModel? get wallet => throw _privateConstructorUsedError;
  CouponGetModel? get coupon => throw _privateConstructorUsedError;
  ChangePasswordModel? get changePwd => throw _privateConstructorUsedError;
  ReturnRequestModel? get returnOrder => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {bool isloading,
      AdressAddModel? addAddress,
      MyAccountModel? myAccountData,
      UserUpdateModel? updateUser,
      AddressGetModel? getAddress,
      AddressUpdateModel? updateAddress,
      AddressDeleteModel? delAddress,
      OrderCancelModel? cancelOrder,
      WalletGetModel? wallet,
      CouponGetModel? coupon,
      ChangePasswordModel? changePwd,
      ReturnRequestModel? returnOrder});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? addAddress = freezed,
    Object? myAccountData = freezed,
    Object? updateUser = freezed,
    Object? getAddress = freezed,
    Object? updateAddress = freezed,
    Object? delAddress = freezed,
    Object? cancelOrder = freezed,
    Object? wallet = freezed,
    Object? coupon = freezed,
    Object? changePwd = freezed,
    Object? returnOrder = freezed,
  }) {
    return _then(_value.copyWith(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      addAddress: freezed == addAddress
          ? _value.addAddress
          : addAddress // ignore: cast_nullable_to_non_nullable
              as AdressAddModel?,
      myAccountData: freezed == myAccountData
          ? _value.myAccountData
          : myAccountData // ignore: cast_nullable_to_non_nullable
              as MyAccountModel?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as UserUpdateModel?,
      getAddress: freezed == getAddress
          ? _value.getAddress
          : getAddress // ignore: cast_nullable_to_non_nullable
              as AddressGetModel?,
      updateAddress: freezed == updateAddress
          ? _value.updateAddress
          : updateAddress // ignore: cast_nullable_to_non_nullable
              as AddressUpdateModel?,
      delAddress: freezed == delAddress
          ? _value.delAddress
          : delAddress // ignore: cast_nullable_to_non_nullable
              as AddressDeleteModel?,
      cancelOrder: freezed == cancelOrder
          ? _value.cancelOrder
          : cancelOrder // ignore: cast_nullable_to_non_nullable
              as OrderCancelModel?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletGetModel?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as CouponGetModel?,
      changePwd: freezed == changePwd
          ? _value.changePwd
          : changePwd // ignore: cast_nullable_to_non_nullable
              as ChangePasswordModel?,
      returnOrder: freezed == returnOrder
          ? _value.returnOrder
          : returnOrder // ignore: cast_nullable_to_non_nullable
              as ReturnRequestModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceOrderStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$PlaceOrderStateImplCopyWith(_$PlaceOrderStateImpl value,
          $Res Function(_$PlaceOrderStateImpl) then) =
      __$$PlaceOrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isloading,
      AdressAddModel? addAddress,
      MyAccountModel? myAccountData,
      UserUpdateModel? updateUser,
      AddressGetModel? getAddress,
      AddressUpdateModel? updateAddress,
      AddressDeleteModel? delAddress,
      OrderCancelModel? cancelOrder,
      WalletGetModel? wallet,
      CouponGetModel? coupon,
      ChangePasswordModel? changePwd,
      ReturnRequestModel? returnOrder});
}

/// @nodoc
class __$$PlaceOrderStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$PlaceOrderStateImpl>
    implements _$$PlaceOrderStateImplCopyWith<$Res> {
  __$$PlaceOrderStateImplCopyWithImpl(
      _$PlaceOrderStateImpl _value, $Res Function(_$PlaceOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isloading = null,
    Object? addAddress = freezed,
    Object? myAccountData = freezed,
    Object? updateUser = freezed,
    Object? getAddress = freezed,
    Object? updateAddress = freezed,
    Object? delAddress = freezed,
    Object? cancelOrder = freezed,
    Object? wallet = freezed,
    Object? coupon = freezed,
    Object? changePwd = freezed,
    Object? returnOrder = freezed,
  }) {
    return _then(_$PlaceOrderStateImpl(
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      addAddress: freezed == addAddress
          ? _value.addAddress
          : addAddress // ignore: cast_nullable_to_non_nullable
              as AdressAddModel?,
      myAccountData: freezed == myAccountData
          ? _value.myAccountData
          : myAccountData // ignore: cast_nullable_to_non_nullable
              as MyAccountModel?,
      updateUser: freezed == updateUser
          ? _value.updateUser
          : updateUser // ignore: cast_nullable_to_non_nullable
              as UserUpdateModel?,
      getAddress: freezed == getAddress
          ? _value.getAddress
          : getAddress // ignore: cast_nullable_to_non_nullable
              as AddressGetModel?,
      updateAddress: freezed == updateAddress
          ? _value.updateAddress
          : updateAddress // ignore: cast_nullable_to_non_nullable
              as AddressUpdateModel?,
      delAddress: freezed == delAddress
          ? _value.delAddress
          : delAddress // ignore: cast_nullable_to_non_nullable
              as AddressDeleteModel?,
      cancelOrder: freezed == cancelOrder
          ? _value.cancelOrder
          : cancelOrder // ignore: cast_nullable_to_non_nullable
              as OrderCancelModel?,
      wallet: freezed == wallet
          ? _value.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletGetModel?,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as CouponGetModel?,
      changePwd: freezed == changePwd
          ? _value.changePwd
          : changePwd // ignore: cast_nullable_to_non_nullable
              as ChangePasswordModel?,
      returnOrder: freezed == returnOrder
          ? _value.returnOrder
          : returnOrder // ignore: cast_nullable_to_non_nullable
              as ReturnRequestModel?,
    ));
  }
}

/// @nodoc

class _$PlaceOrderStateImpl implements _PlaceOrderState {
  const _$PlaceOrderStateImpl(
      {required this.isloading,
      this.addAddress,
      this.myAccountData,
      this.updateUser,
      this.getAddress,
      this.updateAddress,
      this.delAddress,
      this.cancelOrder,
      this.wallet,
      this.coupon,
      this.changePwd,
      this.returnOrder});

  @override
  final bool isloading;
  @override
  final AdressAddModel? addAddress;
  @override
  final MyAccountModel? myAccountData;
  @override
  final UserUpdateModel? updateUser;
  @override
  final AddressGetModel? getAddress;
  @override
  final AddressUpdateModel? updateAddress;
  @override
  final AddressDeleteModel? delAddress;
  @override
  final OrderCancelModel? cancelOrder;
  @override
  final WalletGetModel? wallet;
  @override
  final CouponGetModel? coupon;
  @override
  final ChangePasswordModel? changePwd;
  @override
  final ReturnRequestModel? returnOrder;

  @override
  String toString() {
    return 'ProfileState(isloading: $isloading, addAddress: $addAddress, myAccountData: $myAccountData, updateUser: $updateUser, getAddress: $getAddress, updateAddress: $updateAddress, delAddress: $delAddress, cancelOrder: $cancelOrder, wallet: $wallet, coupon: $coupon, changePwd: $changePwd, returnOrder: $returnOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderStateImpl &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.addAddress, addAddress) ||
                other.addAddress == addAddress) &&
            (identical(other.myAccountData, myAccountData) ||
                other.myAccountData == myAccountData) &&
            (identical(other.updateUser, updateUser) ||
                other.updateUser == updateUser) &&
            (identical(other.getAddress, getAddress) ||
                other.getAddress == getAddress) &&
            (identical(other.updateAddress, updateAddress) ||
                other.updateAddress == updateAddress) &&
            (identical(other.delAddress, delAddress) ||
                other.delAddress == delAddress) &&
            (identical(other.cancelOrder, cancelOrder) ||
                other.cancelOrder == cancelOrder) &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.changePwd, changePwd) ||
                other.changePwd == changePwd) &&
            (identical(other.returnOrder, returnOrder) ||
                other.returnOrder == returnOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isloading,
      addAddress,
      myAccountData,
      updateUser,
      getAddress,
      updateAddress,
      delAddress,
      cancelOrder,
      wallet,
      coupon,
      changePwd,
      returnOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderStateImplCopyWith<_$PlaceOrderStateImpl> get copyWith =>
      __$$PlaceOrderStateImplCopyWithImpl<_$PlaceOrderStateImpl>(
          this, _$identity);
}

abstract class _PlaceOrderState implements ProfileState {
  const factory _PlaceOrderState(
      {required final bool isloading,
      final AdressAddModel? addAddress,
      final MyAccountModel? myAccountData,
      final UserUpdateModel? updateUser,
      final AddressGetModel? getAddress,
      final AddressUpdateModel? updateAddress,
      final AddressDeleteModel? delAddress,
      final OrderCancelModel? cancelOrder,
      final WalletGetModel? wallet,
      final CouponGetModel? coupon,
      final ChangePasswordModel? changePwd,
      final ReturnRequestModel? returnOrder}) = _$PlaceOrderStateImpl;

  @override
  bool get isloading;
  @override
  AdressAddModel? get addAddress;
  @override
  MyAccountModel? get myAccountData;
  @override
  UserUpdateModel? get updateUser;
  @override
  AddressGetModel? get getAddress;
  @override
  AddressUpdateModel? get updateAddress;
  @override
  AddressDeleteModel? get delAddress;
  @override
  OrderCancelModel? get cancelOrder;
  @override
  WalletGetModel? get wallet;
  @override
  CouponGetModel? get coupon;
  @override
  ChangePasswordModel? get changePwd;
  @override
  ReturnRequestModel? get returnOrder;
  @override
  @JsonKey(ignore: true)
  _$$PlaceOrderStateImplCopyWith<_$PlaceOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
