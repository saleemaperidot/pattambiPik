// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allrestaraunts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllrestarauntsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRestaraunts,
    required TResult Function(String query) filterRestraunts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRestaraunts,
    TResult? Function(String query)? filterRestraunts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRestaraunts,
    TResult Function(String query)? filterRestraunts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRestaraunts value) loadRestaraunts,
    required TResult Function(FilterRestraunts value) filterRestraunts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRestaraunts value)? loadRestaraunts,
    TResult? Function(FilterRestraunts value)? filterRestraunts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRestaraunts value)? loadRestaraunts,
    TResult Function(FilterRestraunts value)? filterRestraunts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllrestarauntsEventCopyWith<$Res> {
  factory $AllrestarauntsEventCopyWith(
          AllrestarauntsEvent value, $Res Function(AllrestarauntsEvent) then) =
      _$AllrestarauntsEventCopyWithImpl<$Res, AllrestarauntsEvent>;
}

/// @nodoc
class _$AllrestarauntsEventCopyWithImpl<$Res, $Val extends AllrestarauntsEvent>
    implements $AllrestarauntsEventCopyWith<$Res> {
  _$AllrestarauntsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadRestarauntsCopyWith<$Res> {
  factory _$$LoadRestarauntsCopyWith(
          _$LoadRestaraunts value, $Res Function(_$LoadRestaraunts) then) =
      __$$LoadRestarauntsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadRestarauntsCopyWithImpl<$Res>
    extends _$AllrestarauntsEventCopyWithImpl<$Res, _$LoadRestaraunts>
    implements _$$LoadRestarauntsCopyWith<$Res> {
  __$$LoadRestarauntsCopyWithImpl(
      _$LoadRestaraunts _value, $Res Function(_$LoadRestaraunts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadRestaraunts implements LoadRestaraunts {
  const _$LoadRestaraunts();

  @override
  String toString() {
    return 'AllrestarauntsEvent.loadRestaraunts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadRestaraunts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRestaraunts,
    required TResult Function(String query) filterRestraunts,
  }) {
    return loadRestaraunts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRestaraunts,
    TResult? Function(String query)? filterRestraunts,
  }) {
    return loadRestaraunts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRestaraunts,
    TResult Function(String query)? filterRestraunts,
    required TResult orElse(),
  }) {
    if (loadRestaraunts != null) {
      return loadRestaraunts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRestaraunts value) loadRestaraunts,
    required TResult Function(FilterRestraunts value) filterRestraunts,
  }) {
    return loadRestaraunts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRestaraunts value)? loadRestaraunts,
    TResult? Function(FilterRestraunts value)? filterRestraunts,
  }) {
    return loadRestaraunts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRestaraunts value)? loadRestaraunts,
    TResult Function(FilterRestraunts value)? filterRestraunts,
    required TResult orElse(),
  }) {
    if (loadRestaraunts != null) {
      return loadRestaraunts(this);
    }
    return orElse();
  }
}

abstract class LoadRestaraunts implements AllrestarauntsEvent {
  const factory LoadRestaraunts() = _$LoadRestaraunts;
}

/// @nodoc
abstract class _$$FilterRestrauntsCopyWith<$Res> {
  factory _$$FilterRestrauntsCopyWith(
          _$FilterRestraunts value, $Res Function(_$FilterRestraunts) then) =
      __$$FilterRestrauntsCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$FilterRestrauntsCopyWithImpl<$Res>
    extends _$AllrestarauntsEventCopyWithImpl<$Res, _$FilterRestraunts>
    implements _$$FilterRestrauntsCopyWith<$Res> {
  __$$FilterRestrauntsCopyWithImpl(
      _$FilterRestraunts _value, $Res Function(_$FilterRestraunts) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$FilterRestraunts(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterRestraunts implements FilterRestraunts {
  const _$FilterRestraunts({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'AllrestarauntsEvent.filterRestraunts(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterRestraunts &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterRestrauntsCopyWith<_$FilterRestraunts> get copyWith =>
      __$$FilterRestrauntsCopyWithImpl<_$FilterRestraunts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadRestaraunts,
    required TResult Function(String query) filterRestraunts,
  }) {
    return filterRestraunts(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadRestaraunts,
    TResult? Function(String query)? filterRestraunts,
  }) {
    return filterRestraunts?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadRestaraunts,
    TResult Function(String query)? filterRestraunts,
    required TResult orElse(),
  }) {
    if (filterRestraunts != null) {
      return filterRestraunts(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadRestaraunts value) loadRestaraunts,
    required TResult Function(FilterRestraunts value) filterRestraunts,
  }) {
    return filterRestraunts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadRestaraunts value)? loadRestaraunts,
    TResult? Function(FilterRestraunts value)? filterRestraunts,
  }) {
    return filterRestraunts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadRestaraunts value)? loadRestaraunts,
    TResult Function(FilterRestraunts value)? filterRestraunts,
    required TResult orElse(),
  }) {
    if (filterRestraunts != null) {
      return filterRestraunts(this);
    }
    return orElse();
  }
}

abstract class FilterRestraunts implements AllrestarauntsEvent {
  const factory FilterRestraunts({required final String query}) =
      _$FilterRestraunts;

  String get query;
  @JsonKey(ignore: true)
  _$$FilterRestrauntsCopyWith<_$FilterRestraunts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllrestarauntsState {
  List<RestarauntsModel> get restaurantList =>
      throw _privateConstructorUsedError;
  List<Restaurant> get searchRestraunt => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllrestarauntsStateCopyWith<AllrestarauntsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllrestarauntsStateCopyWith<$Res> {
  factory $AllrestarauntsStateCopyWith(
          AllrestarauntsState value, $Res Function(AllrestarauntsState) then) =
      _$AllrestarauntsStateCopyWithImpl<$Res, AllrestarauntsState>;
  @useResult
  $Res call(
      {List<RestarauntsModel> restaurantList,
      List<Restaurant> searchRestraunt,
      bool isloading,
      bool hasError});
}

/// @nodoc
class _$AllrestarauntsStateCopyWithImpl<$Res, $Val extends AllrestarauntsState>
    implements $AllrestarauntsStateCopyWith<$Res> {
  _$AllrestarauntsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantList = null,
    Object? searchRestraunt = null,
    Object? isloading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      restaurantList: null == restaurantList
          ? _value.restaurantList
          : restaurantList // ignore: cast_nullable_to_non_nullable
              as List<RestarauntsModel>,
      searchRestraunt: null == searchRestraunt
          ? _value.searchRestraunt
          : searchRestraunt // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
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
    implements $AllrestarauntsStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<RestarauntsModel> restaurantList,
      List<Restaurant> searchRestraunt,
      bool isloading,
      bool hasError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AllrestarauntsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurantList = null,
    Object? searchRestraunt = null,
    Object? isloading = null,
    Object? hasError = null,
  }) {
    return _then(_$_Initial(
      restaurantList: null == restaurantList
          ? _value._restaurantList
          : restaurantList // ignore: cast_nullable_to_non_nullable
              as List<RestarauntsModel>,
      searchRestraunt: null == searchRestraunt
          ? _value._searchRestraunt
          : searchRestraunt // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
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
      {required final List<RestarauntsModel> restaurantList,
      required final List<Restaurant> searchRestraunt,
      required this.isloading,
      required this.hasError})
      : _restaurantList = restaurantList,
        _searchRestraunt = searchRestraunt;

  final List<RestarauntsModel> _restaurantList;
  @override
  List<RestarauntsModel> get restaurantList {
    if (_restaurantList is EqualUnmodifiableListView) return _restaurantList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurantList);
  }

  final List<Restaurant> _searchRestraunt;
  @override
  List<Restaurant> get searchRestraunt {
    if (_searchRestraunt is EqualUnmodifiableListView) return _searchRestraunt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchRestraunt);
  }

  @override
  final bool isloading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'AllrestarauntsState(restaurantList: $restaurantList, searchRestraunt: $searchRestraunt, isloading: $isloading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._restaurantList, _restaurantList) &&
            const DeepCollectionEquality()
                .equals(other._searchRestraunt, _searchRestraunt) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_restaurantList),
      const DeepCollectionEquality().hash(_searchRestraunt),
      isloading,
      hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements AllrestarauntsState {
  const factory _Initial(
      {required final List<RestarauntsModel> restaurantList,
      required final List<Restaurant> searchRestraunt,
      required final bool isloading,
      required final bool hasError}) = _$_Initial;

  @override
  List<RestarauntsModel> get restaurantList;
  @override
  List<Restaurant> get searchRestraunt;
  @override
  bool get isloading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
