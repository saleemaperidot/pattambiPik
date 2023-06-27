// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationEvent {
  UserRegister get userregisterdata => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserRegister userregisterdata) registeruser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserRegister userregisterdata)? registeruser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserRegister userregisterdata)? registeruser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Registeruser value) registeruser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Registeruser value)? registeruser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Registeruser value)? registeruser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationEventCopyWith<RegistrationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
  @useResult
  $Res call({UserRegister userregisterdata});
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userregisterdata = null,
  }) {
    return _then(_value.copyWith(
      userregisterdata: null == userregisterdata
          ? _value.userregisterdata
          : userregisterdata // ignore: cast_nullable_to_non_nullable
              as UserRegister,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisteruserCopyWith<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  factory _$$RegisteruserCopyWith(
          _$Registeruser value, $Res Function(_$Registeruser) then) =
      __$$RegisteruserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserRegister userregisterdata});
}

/// @nodoc
class __$$RegisteruserCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$Registeruser>
    implements _$$RegisteruserCopyWith<$Res> {
  __$$RegisteruserCopyWithImpl(
      _$Registeruser _value, $Res Function(_$Registeruser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userregisterdata = null,
  }) {
    return _then(_$Registeruser(
      userregisterdata: null == userregisterdata
          ? _value.userregisterdata
          : userregisterdata // ignore: cast_nullable_to_non_nullable
              as UserRegister,
    ));
  }
}

/// @nodoc

class _$Registeruser implements Registeruser {
  const _$Registeruser({required this.userregisterdata});

  @override
  final UserRegister userregisterdata;

  @override
  String toString() {
    return 'RegistrationEvent.registeruser(userregisterdata: $userregisterdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Registeruser &&
            (identical(other.userregisterdata, userregisterdata) ||
                other.userregisterdata == userregisterdata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userregisterdata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisteruserCopyWith<_$Registeruser> get copyWith =>
      __$$RegisteruserCopyWithImpl<_$Registeruser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserRegister userregisterdata) registeruser,
  }) {
    return registeruser(userregisterdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserRegister userregisterdata)? registeruser,
  }) {
    return registeruser?.call(userregisterdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserRegister userregisterdata)? registeruser,
    required TResult orElse(),
  }) {
    if (registeruser != null) {
      return registeruser(userregisterdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Registeruser value) registeruser,
  }) {
    return registeruser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Registeruser value)? registeruser,
  }) {
    return registeruser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Registeruser value)? registeruser,
    required TResult orElse(),
  }) {
    if (registeruser != null) {
      return registeruser(this);
    }
    return orElse();
  }
}

abstract class Registeruser implements RegistrationEvent {
  const factory Registeruser({required final UserRegister userregisterdata}) =
      _$Registeruser;

  @override
  UserRegister get userregisterdata;
  @override
  @JsonKey(ignore: true)
  _$$RegisteruserCopyWith<_$Registeruser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationState {
  bool get userRegister => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get haserror => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call({bool userRegister, bool isLoading, bool haserror});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRegister = null,
    Object? isLoading = null,
    Object? haserror = null,
  }) {
    return _then(_value.copyWith(
      userRegister: null == userRegister
          ? _value.userRegister
          : userRegister // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      haserror: null == haserror
          ? _value.haserror
          : haserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool userRegister, bool isLoading, bool haserror});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRegister = null,
    Object? isLoading = null,
    Object? haserror = null,
  }) {
    return _then(_$_Initial(
      userRegister: null == userRegister
          ? _value.userRegister
          : userRegister // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      haserror: null == haserror
          ? _value.haserror
          : haserror // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.userRegister,
      required this.isLoading,
      required this.haserror});

  @override
  final bool userRegister;
  @override
  final bool isLoading;
  @override
  final bool haserror;

  @override
  String toString() {
    return 'RegistrationState(userRegister: $userRegister, isLoading: $isLoading, haserror: $haserror)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.userRegister, userRegister) ||
                other.userRegister == userRegister) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.haserror, haserror) ||
                other.haserror == haserror));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userRegister, isLoading, haserror);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements RegistrationState {
  const factory _Initial(
      {required final bool userRegister,
      required final bool isLoading,
      required final bool haserror}) = _$_Initial;

  @override
  bool get userRegister;
  @override
  bool get isLoading;
  @override
  bool get haserror;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
