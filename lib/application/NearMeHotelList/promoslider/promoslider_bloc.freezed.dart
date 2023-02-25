// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promoslider_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PromosliderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPromoslider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadPromoslider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPromoslider,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPromoslider value) loadPromoslider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPromoslider value)? loadPromoslider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPromoslider value)? loadPromoslider,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromosliderEventCopyWith<$Res> {
  factory $PromosliderEventCopyWith(
          PromosliderEvent value, $Res Function(PromosliderEvent) then) =
      _$PromosliderEventCopyWithImpl<$Res, PromosliderEvent>;
}

/// @nodoc
class _$PromosliderEventCopyWithImpl<$Res, $Val extends PromosliderEvent>
    implements $PromosliderEventCopyWith<$Res> {
  _$PromosliderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadPromosliderCopyWith<$Res> {
  factory _$$LoadPromosliderCopyWith(
          _$LoadPromoslider value, $Res Function(_$LoadPromoslider) then) =
      __$$LoadPromosliderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadPromosliderCopyWithImpl<$Res>
    extends _$PromosliderEventCopyWithImpl<$Res, _$LoadPromoslider>
    implements _$$LoadPromosliderCopyWith<$Res> {
  __$$LoadPromosliderCopyWithImpl(
      _$LoadPromoslider _value, $Res Function(_$LoadPromoslider) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadPromoslider implements LoadPromoslider {
  const _$LoadPromoslider();

  @override
  String toString() {
    return 'PromosliderEvent.loadPromoslider()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadPromoslider);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadPromoslider,
  }) {
    return loadPromoslider();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadPromoslider,
  }) {
    return loadPromoslider?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadPromoslider,
    required TResult orElse(),
  }) {
    if (loadPromoslider != null) {
      return loadPromoslider();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadPromoslider value) loadPromoslider,
  }) {
    return loadPromoslider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadPromoslider value)? loadPromoslider,
  }) {
    return loadPromoslider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadPromoslider value)? loadPromoslider,
    required TResult orElse(),
  }) {
    if (loadPromoslider != null) {
      return loadPromoslider(this);
    }
    return orElse();
  }
}

abstract class LoadPromoslider implements PromosliderEvent {
  const factory LoadPromoslider() = _$LoadPromoslider;
}

/// @nodoc
mixin _$PromosliderState {
  List<Promoslider> get promoSlide => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromosliderStateCopyWith<PromosliderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromosliderStateCopyWith<$Res> {
  factory $PromosliderStateCopyWith(
          PromosliderState value, $Res Function(PromosliderState) then) =
      _$PromosliderStateCopyWithImpl<$Res, PromosliderState>;
  @useResult
  $Res call({List<Promoslider> promoSlide, bool isloading, bool hasError});
}

/// @nodoc
class _$PromosliderStateCopyWithImpl<$Res, $Val extends PromosliderState>
    implements $PromosliderStateCopyWith<$Res> {
  _$PromosliderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promoSlide = null,
    Object? isloading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      promoSlide: null == promoSlide
          ? _value.promoSlide
          : promoSlide // ignore: cast_nullable_to_non_nullable
              as List<Promoslider>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $PromosliderStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Promoslider> promoSlide, bool isloading, bool hasError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$PromosliderStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promoSlide = null,
    Object? isloading = null,
    Object? hasError = null,
  }) {
    return _then(_$_Initial(
      promoSlide: null == promoSlide
          ? _value._promoSlide
          : promoSlide // ignore: cast_nullable_to_non_nullable
              as List<Promoslider>,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: null == hasError
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required final List<Promoslider> promoSlide,
      required this.isloading,
      required this.hasError})
      : _promoSlide = promoSlide;

  final List<Promoslider> _promoSlide;
  @override
  List<Promoslider> get promoSlide {
    if (_promoSlide is EqualUnmodifiableListView) return _promoSlide;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_promoSlide);
  }

  @override
  final bool isloading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'PromosliderState(promoSlide: $promoSlide, isloading: $isloading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._promoSlide, _promoSlide) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_promoSlide), isloading, hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements PromosliderState {
  const factory _Initial(
      {required final List<Promoslider> promoSlide,
      required final bool isloading,
      required final bool hasError}) = _$_Initial;

  @override
  List<Promoslider> get promoSlide;
  @override
  bool get isloading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
