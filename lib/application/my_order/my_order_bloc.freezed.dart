// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MyOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyOrderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyOrderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyOrderList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMyOrderList value) getMyOrderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMyOrderList value)? getMyOrderList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMyOrderList value)? getMyOrderList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrderEventCopyWith<$Res> {
  factory $MyOrderEventCopyWith(
          MyOrderEvent value, $Res Function(MyOrderEvent) then) =
      _$MyOrderEventCopyWithImpl<$Res, MyOrderEvent>;
}

/// @nodoc
class _$MyOrderEventCopyWithImpl<$Res, $Val extends MyOrderEvent>
    implements $MyOrderEventCopyWith<$Res> {
  _$MyOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMyOrderListCopyWith<$Res> {
  factory _$$GetMyOrderListCopyWith(
          _$GetMyOrderList value, $Res Function(_$GetMyOrderList) then) =
      __$$GetMyOrderListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMyOrderListCopyWithImpl<$Res>
    extends _$MyOrderEventCopyWithImpl<$Res, _$GetMyOrderList>
    implements _$$GetMyOrderListCopyWith<$Res> {
  __$$GetMyOrderListCopyWithImpl(
      _$GetMyOrderList _value, $Res Function(_$GetMyOrderList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMyOrderList implements GetMyOrderList {
  const _$GetMyOrderList();

  @override
  String toString() {
    return 'MyOrderEvent.getMyOrderList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMyOrderList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyOrderList,
  }) {
    return getMyOrderList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyOrderList,
  }) {
    return getMyOrderList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyOrderList,
    required TResult orElse(),
  }) {
    if (getMyOrderList != null) {
      return getMyOrderList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMyOrderList value) getMyOrderList,
  }) {
    return getMyOrderList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMyOrderList value)? getMyOrderList,
  }) {
    return getMyOrderList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMyOrderList value)? getMyOrderList,
    required TResult orElse(),
  }) {
    if (getMyOrderList != null) {
      return getMyOrderList(this);
    }
    return orElse();
  }
}

abstract class GetMyOrderList implements MyOrderEvent {
  const factory GetMyOrderList() = _$GetMyOrderList;
}

/// @nodoc
mixin _$MyOrderState {
  List<OrderListModel> get orderList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyOrderStateCopyWith<MyOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyOrderStateCopyWith<$Res> {
  factory $MyOrderStateCopyWith(
          MyOrderState value, $Res Function(MyOrderState) then) =
      _$MyOrderStateCopyWithImpl<$Res, MyOrderState>;
  @useResult
  $Res call({List<OrderListModel> orderList, bool isLoading, bool hasError});
}

/// @nodoc
class _$MyOrderStateCopyWithImpl<$Res, $Val extends MyOrderState>
    implements $MyOrderStateCopyWith<$Res> {
  _$MyOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      orderList: null == orderList
          ? _value.orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderListModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
    implements $MyOrderStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderListModel> orderList, bool isLoading, bool hasError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$MyOrderStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderList = null,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$_Initial(
      orderList: null == orderList
          ? _value._orderList
          : orderList // ignore: cast_nullable_to_non_nullable
              as List<OrderListModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
      {required final List<OrderListModel> orderList,
      required this.isLoading,
      required this.hasError})
      : _orderList = orderList;

  final List<OrderListModel> _orderList;
  @override
  List<OrderListModel> get orderList {
    if (_orderList is EqualUnmodifiableListView) return _orderList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderList);
  }

  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'MyOrderState(orderList: $orderList, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._orderList, _orderList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_orderList), isLoading, hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements MyOrderState {
  const factory _Initial(
      {required final List<OrderListModel> orderList,
      required final bool isLoading,
      required final bool hasError}) = _$_Initial;

  @override
  List<OrderListModel> get orderList;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
