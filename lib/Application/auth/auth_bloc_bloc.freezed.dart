// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String email, String name, int phone, String password)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) otpverification,
    required TResult Function(String recievedOtp) checkOtp,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email, String name, int phone, String password)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? otpverification,
    TResult? Function(String recievedOtp)? checkOtp,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String name, int phone, String password)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? otpverification,
    TResult Function(String recievedOtp)? checkOtp,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value) $default, {
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Otpverification value) otpverification,
    required TResult Function(_CheckOtp value) checkOtp,
    required TResult Function(_LogOut value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthBlocEvent value)? $default, {
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Otpverification value)? otpverification,
    TResult? Function(_CheckOtp value)? checkOtp,
    TResult? Function(_LogOut value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value)? $default, {
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Otpverification value)? otpverification,
    TResult Function(_CheckOtp value)? checkOtp,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocEventCopyWith<$Res> {
  factory $AuthBlocEventCopyWith(
          AuthBlocEvent value, $Res Function(AuthBlocEvent) then) =
      _$AuthBlocEventCopyWithImpl<$Res, AuthBlocEvent>;
}

/// @nodoc
class _$AuthBlocEventCopyWithImpl<$Res, $Val extends AuthBlocEvent>
    implements $AuthBlocEventCopyWith<$Res> {
  _$AuthBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthBlocEventImplCopyWith<$Res> {
  factory _$$AuthBlocEventImplCopyWith(
          _$AuthBlocEventImpl value, $Res Function(_$AuthBlocEventImpl) then) =
      __$$AuthBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthBlocEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$AuthBlocEventImpl>
    implements _$$AuthBlocEventImplCopyWith<$Res> {
  __$$AuthBlocEventImplCopyWithImpl(
      _$AuthBlocEventImpl _value, $Res Function(_$AuthBlocEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthBlocEventImpl implements _AuthBlocEvent {
  const _$AuthBlocEventImpl();

  @override
  String toString() {
    return 'AuthBlocEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String email, String name, int phone, String password)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) otpverification,
    required TResult Function(String recievedOtp) checkOtp,
    required TResult Function() logOut,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email, String name, int phone, String password)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? otpverification,
    TResult? Function(String recievedOtp)? checkOtp,
    TResult? Function()? logOut,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String name, int phone, String password)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? otpverification,
    TResult Function(String recievedOtp)? checkOtp,
    TResult Function()? logOut,
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
    TResult Function(_AuthBlocEvent value) $default, {
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Otpverification value) otpverification,
    required TResult Function(_CheckOtp value) checkOtp,
    required TResult Function(_LogOut value) logOut,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthBlocEvent value)? $default, {
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Otpverification value)? otpverification,
    TResult? Function(_CheckOtp value)? checkOtp,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value)? $default, {
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Otpverification value)? otpverification,
    TResult Function(_CheckOtp value)? checkOtp,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _AuthBlocEvent implements AuthBlocEvent {
  const factory _AuthBlocEvent() = _$AuthBlocEventImpl;
}

/// @nodoc
abstract class _$$SignUpImplCopyWith<$Res> {
  factory _$$SignUpImplCopyWith(
          _$SignUpImpl value, $Res Function(_$SignUpImpl) then) =
      __$$SignUpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String name, int phone, String password});
}

/// @nodoc
class __$$SignUpImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$SignUpImpl>
    implements _$$SignUpImplCopyWith<$Res> {
  __$$SignUpImplCopyWithImpl(
      _$SignUpImpl _value, $Res Function(_$SignUpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? name = null,
    Object? phone = null,
    Object? password = null,
  }) {
    return _then(_$SignUpImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpImpl implements _SignUp {
  _$SignUpImpl(this.email, this.name, this.phone, this.password);

  @override
  final String email;
  @override
  final String name;
  @override
  final int phone;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthBlocEvent.signUp(email: $email, name: $name, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, name, phone, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      __$$SignUpImplCopyWithImpl<_$SignUpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String email, String name, int phone, String password)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) otpverification,
    required TResult Function(String recievedOtp) checkOtp,
    required TResult Function() logOut,
  }) {
    return signUp(email, name, phone, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email, String name, int phone, String password)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? otpverification,
    TResult? Function(String recievedOtp)? checkOtp,
    TResult? Function()? logOut,
  }) {
    return signUp?.call(email, name, phone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String name, int phone, String password)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? otpverification,
    TResult Function(String recievedOtp)? checkOtp,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, name, phone, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value) $default, {
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Otpverification value) otpverification,
    required TResult Function(_CheckOtp value) checkOtp,
    required TResult Function(_LogOut value) logOut,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthBlocEvent value)? $default, {
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Otpverification value)? otpverification,
    TResult? Function(_CheckOtp value)? checkOtp,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value)? $default, {
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Otpverification value)? otpverification,
    TResult Function(_CheckOtp value)? checkOtp,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements AuthBlocEvent {
  factory _SignUp(final String email, final String name, final int phone,
      final String password) = _$SignUpImpl;

  String get email;
  String get name;
  int get phone;
  String get password;
  @JsonKey(ignore: true)
  _$$SignUpImplCopyWith<_$SignUpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInImplCopyWith<$Res> {
  factory _$$SignInImplCopyWith(
          _$SignInImpl value, $Res Function(_$SignInImpl) then) =
      __$$SignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$SignInImpl>
    implements _$$SignInImplCopyWith<$Res> {
  __$$SignInImplCopyWithImpl(
      _$SignInImpl _value, $Res Function(_$SignInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInImpl implements _SignIn {
  _$SignInImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthBlocEvent.signIn(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      __$$SignInImplCopyWithImpl<_$SignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String email, String name, int phone, String password)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) otpverification,
    required TResult Function(String recievedOtp) checkOtp,
    required TResult Function() logOut,
  }) {
    return signIn(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email, String name, int phone, String password)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? otpverification,
    TResult? Function(String recievedOtp)? checkOtp,
    TResult? Function()? logOut,
  }) {
    return signIn?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String name, int phone, String password)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? otpverification,
    TResult Function(String recievedOtp)? checkOtp,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value) $default, {
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Otpverification value) otpverification,
    required TResult Function(_CheckOtp value) checkOtp,
    required TResult Function(_LogOut value) logOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthBlocEvent value)? $default, {
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Otpverification value)? otpverification,
    TResult? Function(_CheckOtp value)? checkOtp,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value)? $default, {
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Otpverification value)? otpverification,
    TResult Function(_CheckOtp value)? checkOtp,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _SignIn implements AuthBlocEvent {
  factory _SignIn(final String email, final String password) = _$SignInImpl;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$SignInImplCopyWith<_$SignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpverificationImplCopyWith<$Res> {
  factory _$$OtpverificationImplCopyWith(_$OtpverificationImpl value,
          $Res Function(_$OtpverificationImpl) then) =
      __$$OtpverificationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$OtpverificationImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$OtpverificationImpl>
    implements _$$OtpverificationImplCopyWith<$Res> {
  __$$OtpverificationImplCopyWithImpl(
      _$OtpverificationImpl _value, $Res Function(_$OtpverificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$OtpverificationImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpverificationImpl implements _Otpverification {
  _$OtpverificationImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthBlocEvent.otpverification(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpverificationImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpverificationImplCopyWith<_$OtpverificationImpl> get copyWith =>
      __$$OtpverificationImplCopyWithImpl<_$OtpverificationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String email, String name, int phone, String password)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) otpverification,
    required TResult Function(String recievedOtp) checkOtp,
    required TResult Function() logOut,
  }) {
    return otpverification(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email, String name, int phone, String password)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? otpverification,
    TResult? Function(String recievedOtp)? checkOtp,
    TResult? Function()? logOut,
  }) {
    return otpverification?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String name, int phone, String password)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? otpverification,
    TResult Function(String recievedOtp)? checkOtp,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (otpverification != null) {
      return otpverification(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value) $default, {
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Otpverification value) otpverification,
    required TResult Function(_CheckOtp value) checkOtp,
    required TResult Function(_LogOut value) logOut,
  }) {
    return otpverification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthBlocEvent value)? $default, {
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Otpverification value)? otpverification,
    TResult? Function(_CheckOtp value)? checkOtp,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return otpverification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value)? $default, {
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Otpverification value)? otpverification,
    TResult Function(_CheckOtp value)? checkOtp,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (otpverification != null) {
      return otpverification(this);
    }
    return orElse();
  }
}

abstract class _Otpverification implements AuthBlocEvent {
  factory _Otpverification(final String email) = _$OtpverificationImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$OtpverificationImplCopyWith<_$OtpverificationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckOtpImplCopyWith<$Res> {
  factory _$$CheckOtpImplCopyWith(
          _$CheckOtpImpl value, $Res Function(_$CheckOtpImpl) then) =
      __$$CheckOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String recievedOtp});
}

/// @nodoc
class __$$CheckOtpImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$CheckOtpImpl>
    implements _$$CheckOtpImplCopyWith<$Res> {
  __$$CheckOtpImplCopyWithImpl(
      _$CheckOtpImpl _value, $Res Function(_$CheckOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recievedOtp = null,
  }) {
    return _then(_$CheckOtpImpl(
      null == recievedOtp
          ? _value.recievedOtp
          : recievedOtp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckOtpImpl implements _CheckOtp {
  _$CheckOtpImpl(this.recievedOtp);

  @override
  final String recievedOtp;

  @override
  String toString() {
    return 'AuthBlocEvent.checkOtp(recievedOtp: $recievedOtp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckOtpImpl &&
            (identical(other.recievedOtp, recievedOtp) ||
                other.recievedOtp == recievedOtp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recievedOtp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckOtpImplCopyWith<_$CheckOtpImpl> get copyWith =>
      __$$CheckOtpImplCopyWithImpl<_$CheckOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String email, String name, int phone, String password)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) otpverification,
    required TResult Function(String recievedOtp) checkOtp,
    required TResult Function() logOut,
  }) {
    return checkOtp(recievedOtp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email, String name, int phone, String password)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? otpverification,
    TResult? Function(String recievedOtp)? checkOtp,
    TResult? Function()? logOut,
  }) {
    return checkOtp?.call(recievedOtp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String name, int phone, String password)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? otpverification,
    TResult Function(String recievedOtp)? checkOtp,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (checkOtp != null) {
      return checkOtp(recievedOtp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value) $default, {
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Otpverification value) otpverification,
    required TResult Function(_CheckOtp value) checkOtp,
    required TResult Function(_LogOut value) logOut,
  }) {
    return checkOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthBlocEvent value)? $default, {
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Otpverification value)? otpverification,
    TResult? Function(_CheckOtp value)? checkOtp,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return checkOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value)? $default, {
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Otpverification value)? otpverification,
    TResult Function(_CheckOtp value)? checkOtp,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (checkOtp != null) {
      return checkOtp(this);
    }
    return orElse();
  }
}

abstract class _CheckOtp implements AuthBlocEvent {
  factory _CheckOtp(final String recievedOtp) = _$CheckOtpImpl;

  String get recievedOtp;
  @JsonKey(ignore: true)
  _$$CheckOtpImplCopyWith<_$CheckOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogOutImplCopyWith<$Res> {
  factory _$$LogOutImplCopyWith(
          _$LogOutImpl value, $Res Function(_$LogOutImpl) then) =
      __$$LogOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$LogOutImpl>
    implements _$$LogOutImplCopyWith<$Res> {
  __$$LogOutImplCopyWithImpl(
      _$LogOutImpl _value, $Res Function(_$LogOutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutImpl implements _LogOut {
  _$LogOutImpl();

  @override
  String toString() {
    return 'AuthBlocEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(
            String email, String name, int phone, String password)
        signUp,
    required TResult Function(String email, String password) signIn,
    required TResult Function(String email) otpverification,
    required TResult Function(String recievedOtp) checkOtp,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String email, String name, int phone, String password)?
        signUp,
    TResult? Function(String email, String password)? signIn,
    TResult? Function(String email)? otpverification,
    TResult? Function(String recievedOtp)? checkOtp,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String email, String name, int phone, String password)?
        signUp,
    TResult Function(String email, String password)? signIn,
    TResult Function(String email)? otpverification,
    TResult Function(String recievedOtp)? checkOtp,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value) $default, {
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_SignIn value) signIn,
    required TResult Function(_Otpverification value) otpverification,
    required TResult Function(_CheckOtp value) checkOtp,
    required TResult Function(_LogOut value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AuthBlocEvent value)? $default, {
    TResult? Function(_SignUp value)? signUp,
    TResult? Function(_SignIn value)? signIn,
    TResult? Function(_Otpverification value)? otpverification,
    TResult? Function(_CheckOtp value)? checkOtp,
    TResult? Function(_LogOut value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AuthBlocEvent value)? $default, {
    TResult Function(_SignUp value)? signUp,
    TResult Function(_SignIn value)? signIn,
    TResult Function(_Otpverification value)? otpverification,
    TResult Function(_CheckOtp value)? checkOtp,
    TResult Function(_LogOut value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class _LogOut implements AuthBlocEvent {
  factory _LogOut() = _$LogOutImpl;
}

/// @nodoc
mixin _$AuthBlocState {
  bool get isLoading => throw _privateConstructorUsedError;
  UserRegister? get user => throw _privateConstructorUsedError;
  UserLogin? get loginUser => throw _privateConstructorUsedError;
  SendOtp? get otp => throw _privateConstructorUsedError;
  CheckOtpModel? get verifyOtp => throw _privateConstructorUsedError;
  LogoutModel? get logout => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthBlocStateCopyWith<AuthBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocStateCopyWith<$Res> {
  factory $AuthBlocStateCopyWith(
          AuthBlocState value, $Res Function(AuthBlocState) then) =
      _$AuthBlocStateCopyWithImpl<$Res, AuthBlocState>;
  @useResult
  $Res call(
      {bool isLoading,
      UserRegister? user,
      UserLogin? loginUser,
      SendOtp? otp,
      CheckOtpModel? verifyOtp,
      LogoutModel? logout});
}

/// @nodoc
class _$AuthBlocStateCopyWithImpl<$Res, $Val extends AuthBlocState>
    implements $AuthBlocStateCopyWith<$Res> {
  _$AuthBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? loginUser = freezed,
    Object? otp = freezed,
    Object? verifyOtp = freezed,
    Object? logout = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegister?,
      loginUser: freezed == loginUser
          ? _value.loginUser
          : loginUser // ignore: cast_nullable_to_non_nullable
              as UserLogin?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as SendOtp?,
      verifyOtp: freezed == verifyOtp
          ? _value.verifyOtp
          : verifyOtp // ignore: cast_nullable_to_non_nullable
              as CheckOtpModel?,
      logout: freezed == logout
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as LogoutModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthBlocStateImplCopyWith<$Res>
    implements $AuthBlocStateCopyWith<$Res> {
  factory _$$AuthBlocStateImplCopyWith(
          _$AuthBlocStateImpl value, $Res Function(_$AuthBlocStateImpl) then) =
      __$$AuthBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      UserRegister? user,
      UserLogin? loginUser,
      SendOtp? otp,
      CheckOtpModel? verifyOtp,
      LogoutModel? logout});
}

/// @nodoc
class __$$AuthBlocStateImplCopyWithImpl<$Res>
    extends _$AuthBlocStateCopyWithImpl<$Res, _$AuthBlocStateImpl>
    implements _$$AuthBlocStateImplCopyWith<$Res> {
  __$$AuthBlocStateImplCopyWithImpl(
      _$AuthBlocStateImpl _value, $Res Function(_$AuthBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
    Object? loginUser = freezed,
    Object? otp = freezed,
    Object? verifyOtp = freezed,
    Object? logout = freezed,
  }) {
    return _then(_$AuthBlocStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserRegister?,
      loginUser: freezed == loginUser
          ? _value.loginUser
          : loginUser // ignore: cast_nullable_to_non_nullable
              as UserLogin?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as SendOtp?,
      verifyOtp: freezed == verifyOtp
          ? _value.verifyOtp
          : verifyOtp // ignore: cast_nullable_to_non_nullable
              as CheckOtpModel?,
      logout: freezed == logout
          ? _value.logout
          : logout // ignore: cast_nullable_to_non_nullable
              as LogoutModel?,
    ));
  }
}

/// @nodoc

class _$AuthBlocStateImpl implements _AuthBlocState {
  const _$AuthBlocStateImpl(
      {required this.isLoading,
      this.user,
      this.loginUser,
      this.otp,
      this.verifyOtp,
      this.logout});

  @override
  final bool isLoading;
  @override
  final UserRegister? user;
  @override
  final UserLogin? loginUser;
  @override
  final SendOtp? otp;
  @override
  final CheckOtpModel? verifyOtp;
  @override
  final LogoutModel? logout;

  @override
  String toString() {
    return 'AuthBlocState(isLoading: $isLoading, user: $user, loginUser: $loginUser, otp: $otp, verifyOtp: $verifyOtp, logout: $logout)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthBlocStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.loginUser, loginUser) ||
                other.loginUser == loginUser) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.verifyOtp, verifyOtp) ||
                other.verifyOtp == verifyOtp) &&
            (identical(other.logout, logout) || other.logout == logout));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, user, loginUser, otp, verifyOtp, logout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthBlocStateImplCopyWith<_$AuthBlocStateImpl> get copyWith =>
      __$$AuthBlocStateImplCopyWithImpl<_$AuthBlocStateImpl>(this, _$identity);
}

abstract class _AuthBlocState implements AuthBlocState {
  const factory _AuthBlocState(
      {required final bool isLoading,
      final UserRegister? user,
      final UserLogin? loginUser,
      final SendOtp? otp,
      final CheckOtpModel? verifyOtp,
      final LogoutModel? logout}) = _$AuthBlocStateImpl;

  @override
  bool get isLoading;
  @override
  UserRegister? get user;
  @override
  UserLogin? get loginUser;
  @override
  SendOtp? get otp;
  @override
  CheckOtpModel? get verifyOtp;
  @override
  LogoutModel? get logout;
  @override
  @JsonKey(ignore: true)
  _$$AuthBlocStateImplCopyWith<_$AuthBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
