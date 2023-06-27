// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proceed_to_checkout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProceedToCheckoutEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Order> order,
            dynamic coupon,
            Location location,
            dynamic orderComment,
            Total total,
            String methord,
            String paymentTocken,
            int deliveryType,
            bool partialwallet,
            int dis,
            bool pendingPayment,
            dynamic tipAmount)
        checkOut,
    required TResult Function() myOrdersResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Order> order,
            dynamic coupon,
            Location location,
            dynamic orderComment,
            Total total,
            String methord,
            String paymentTocken,
            int deliveryType,
            bool partialwallet,
            int dis,
            bool pendingPayment,
            dynamic tipAmount)?
        checkOut,
    TResult? Function()? myOrdersResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Order> order,
            dynamic coupon,
            Location location,
            dynamic orderComment,
            Total total,
            String methord,
            String paymentTocken,
            int deliveryType,
            bool partialwallet,
            int dis,
            bool pendingPayment,
            dynamic tipAmount)?
        checkOut,
    TResult Function()? myOrdersResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckOut value) checkOut,
    required TResult Function(myOrdersResult value) myOrdersResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckOut value)? checkOut,
    TResult? Function(myOrdersResult value)? myOrdersResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckOut value)? checkOut,
    TResult Function(myOrdersResult value)? myOrdersResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProceedToCheckoutEventCopyWith<$Res> {
  factory $ProceedToCheckoutEventCopyWith(ProceedToCheckoutEvent value,
          $Res Function(ProceedToCheckoutEvent) then) =
      _$ProceedToCheckoutEventCopyWithImpl<$Res, ProceedToCheckoutEvent>;
}

/// @nodoc
class _$ProceedToCheckoutEventCopyWithImpl<$Res,
        $Val extends ProceedToCheckoutEvent>
    implements $ProceedToCheckoutEventCopyWith<$Res> {
  _$ProceedToCheckoutEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckOutCopyWith<$Res> {
  factory _$$CheckOutCopyWith(
          _$CheckOut value, $Res Function(_$CheckOut) then) =
      __$$CheckOutCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Order> order,
      dynamic coupon,
      Location location,
      dynamic orderComment,
      Total total,
      String methord,
      String paymentTocken,
      int deliveryType,
      bool partialwallet,
      int dis,
      bool pendingPayment,
      dynamic tipAmount});
}

/// @nodoc
class __$$CheckOutCopyWithImpl<$Res>
    extends _$ProceedToCheckoutEventCopyWithImpl<$Res, _$CheckOut>
    implements _$$CheckOutCopyWith<$Res> {
  __$$CheckOutCopyWithImpl(_$CheckOut _value, $Res Function(_$CheckOut) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? coupon = freezed,
    Object? location = null,
    Object? orderComment = freezed,
    Object? total = null,
    Object? methord = null,
    Object? paymentTocken = null,
    Object? deliveryType = null,
    Object? partialwallet = null,
    Object? dis = null,
    Object? pendingPayment = null,
    Object? tipAmount = freezed,
  }) {
    return _then(_$CheckOut(
      order: null == order
          ? _value._order
          : order // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      coupon: freezed == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as dynamic,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      orderComment: freezed == orderComment
          ? _value.orderComment
          : orderComment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Total,
      methord: null == methord
          ? _value.methord
          : methord // ignore: cast_nullable_to_non_nullable
              as String,
      paymentTocken: null == paymentTocken
          ? _value.paymentTocken
          : paymentTocken // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryType: null == deliveryType
          ? _value.deliveryType
          : deliveryType // ignore: cast_nullable_to_non_nullable
              as int,
      partialwallet: null == partialwallet
          ? _value.partialwallet
          : partialwallet // ignore: cast_nullable_to_non_nullable
              as bool,
      dis: null == dis
          ? _value.dis
          : dis // ignore: cast_nullable_to_non_nullable
              as int,
      pendingPayment: null == pendingPayment
          ? _value.pendingPayment
          : pendingPayment // ignore: cast_nullable_to_non_nullable
              as bool,
      tipAmount: freezed == tipAmount
          ? _value.tipAmount
          : tipAmount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CheckOut implements CheckOut {
  const _$CheckOut(
      {required final List<Order> order,
      required this.coupon,
      required this.location,
      required this.orderComment,
      required this.total,
      required this.methord,
      required this.paymentTocken,
      required this.deliveryType,
      required this.partialwallet,
      required this.dis,
      required this.pendingPayment,
      required this.tipAmount})
      : _order = order;

  final List<Order> _order;
  @override
  List<Order> get order {
    if (_order is EqualUnmodifiableListView) return _order;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_order);
  }

  @override
  final dynamic coupon;
  @override
  final Location location;
  @override
  final dynamic orderComment;
  @override
  final Total total;
  @override
  final String methord;
  @override
  final String paymentTocken;
  @override
  final int deliveryType;
  @override
  final bool partialwallet;
  @override
  final int dis;
  @override
  final bool pendingPayment;
  @override
  final dynamic tipAmount;

  @override
  String toString() {
    return 'ProceedToCheckoutEvent.checkOut(order: $order, coupon: $coupon, location: $location, orderComment: $orderComment, total: $total, methord: $methord, paymentTocken: $paymentTocken, deliveryType: $deliveryType, partialwallet: $partialwallet, dis: $dis, pendingPayment: $pendingPayment, tipAmount: $tipAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckOut &&
            const DeepCollectionEquality().equals(other._order, _order) &&
            const DeepCollectionEquality().equals(other.coupon, coupon) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other.orderComment, orderComment) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.methord, methord) || other.methord == methord) &&
            (identical(other.paymentTocken, paymentTocken) ||
                other.paymentTocken == paymentTocken) &&
            (identical(other.deliveryType, deliveryType) ||
                other.deliveryType == deliveryType) &&
            (identical(other.partialwallet, partialwallet) ||
                other.partialwallet == partialwallet) &&
            (identical(other.dis, dis) || other.dis == dis) &&
            (identical(other.pendingPayment, pendingPayment) ||
                other.pendingPayment == pendingPayment) &&
            const DeepCollectionEquality().equals(other.tipAmount, tipAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_order),
      const DeepCollectionEquality().hash(coupon),
      location,
      const DeepCollectionEquality().hash(orderComment),
      total,
      methord,
      paymentTocken,
      deliveryType,
      partialwallet,
      dis,
      pendingPayment,
      const DeepCollectionEquality().hash(tipAmount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckOutCopyWith<_$CheckOut> get copyWith =>
      __$$CheckOutCopyWithImpl<_$CheckOut>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Order> order,
            dynamic coupon,
            Location location,
            dynamic orderComment,
            Total total,
            String methord,
            String paymentTocken,
            int deliveryType,
            bool partialwallet,
            int dis,
            bool pendingPayment,
            dynamic tipAmount)
        checkOut,
    required TResult Function() myOrdersResult,
  }) {
    return checkOut(
        order,
        coupon,
        location,
        orderComment,
        total,
        methord,
        paymentTocken,
        deliveryType,
        partialwallet,
        dis,
        pendingPayment,
        tipAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Order> order,
            dynamic coupon,
            Location location,
            dynamic orderComment,
            Total total,
            String methord,
            String paymentTocken,
            int deliveryType,
            bool partialwallet,
            int dis,
            bool pendingPayment,
            dynamic tipAmount)?
        checkOut,
    TResult? Function()? myOrdersResult,
  }) {
    return checkOut?.call(
        order,
        coupon,
        location,
        orderComment,
        total,
        methord,
        paymentTocken,
        deliveryType,
        partialwallet,
        dis,
        pendingPayment,
        tipAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Order> order,
            dynamic coupon,
            Location location,
            dynamic orderComment,
            Total total,
            String methord,
            String paymentTocken,
            int deliveryType,
            bool partialwallet,
            int dis,
            bool pendingPayment,
            dynamic tipAmount)?
        checkOut,
    TResult Function()? myOrdersResult,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut(
          order,
          coupon,
          location,
          orderComment,
          total,
          methord,
          paymentTocken,
          deliveryType,
          partialwallet,
          dis,
          pendingPayment,
          tipAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckOut value) checkOut,
    required TResult Function(myOrdersResult value) myOrdersResult,
  }) {
    return checkOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckOut value)? checkOut,
    TResult? Function(myOrdersResult value)? myOrdersResult,
  }) {
    return checkOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckOut value)? checkOut,
    TResult Function(myOrdersResult value)? myOrdersResult,
    required TResult orElse(),
  }) {
    if (checkOut != null) {
      return checkOut(this);
    }
    return orElse();
  }
}

abstract class CheckOut implements ProceedToCheckoutEvent {
  const factory CheckOut(
      {required final List<Order> order,
      required final dynamic coupon,
      required final Location location,
      required final dynamic orderComment,
      required final Total total,
      required final String methord,
      required final String paymentTocken,
      required final int deliveryType,
      required final bool partialwallet,
      required final int dis,
      required final bool pendingPayment,
      required final dynamic tipAmount}) = _$CheckOut;

  List<Order> get order;
  dynamic get coupon;
  Location get location;
  dynamic get orderComment;
  Total get total;
  String get methord;
  String get paymentTocken;
  int get deliveryType;
  bool get partialwallet;
  int get dis;
  bool get pendingPayment;
  dynamic get tipAmount;
  @JsonKey(ignore: true)
  _$$CheckOutCopyWith<_$CheckOut> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$myOrdersResultCopyWith<$Res> {
  factory _$$myOrdersResultCopyWith(
          _$myOrdersResult value, $Res Function(_$myOrdersResult) then) =
      __$$myOrdersResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$myOrdersResultCopyWithImpl<$Res>
    extends _$ProceedToCheckoutEventCopyWithImpl<$Res, _$myOrdersResult>
    implements _$$myOrdersResultCopyWith<$Res> {
  __$$myOrdersResultCopyWithImpl(
      _$myOrdersResult _value, $Res Function(_$myOrdersResult) _then)
      : super(_value, _then);
}

/// @nodoc

class _$myOrdersResult implements myOrdersResult {
  const _$myOrdersResult();

  @override
  String toString() {
    return 'ProceedToCheckoutEvent.myOrdersResult()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$myOrdersResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<Order> order,
            dynamic coupon,
            Location location,
            dynamic orderComment,
            Total total,
            String methord,
            String paymentTocken,
            int deliveryType,
            bool partialwallet,
            int dis,
            bool pendingPayment,
            dynamic tipAmount)
        checkOut,
    required TResult Function() myOrdersResult,
  }) {
    return myOrdersResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            List<Order> order,
            dynamic coupon,
            Location location,
            dynamic orderComment,
            Total total,
            String methord,
            String paymentTocken,
            int deliveryType,
            bool partialwallet,
            int dis,
            bool pendingPayment,
            dynamic tipAmount)?
        checkOut,
    TResult? Function()? myOrdersResult,
  }) {
    return myOrdersResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            List<Order> order,
            dynamic coupon,
            Location location,
            dynamic orderComment,
            Total total,
            String methord,
            String paymentTocken,
            int deliveryType,
            bool partialwallet,
            int dis,
            bool pendingPayment,
            dynamic tipAmount)?
        checkOut,
    TResult Function()? myOrdersResult,
    required TResult orElse(),
  }) {
    if (myOrdersResult != null) {
      return myOrdersResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckOut value) checkOut,
    required TResult Function(myOrdersResult value) myOrdersResult,
  }) {
    return myOrdersResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckOut value)? checkOut,
    TResult? Function(myOrdersResult value)? myOrdersResult,
  }) {
    return myOrdersResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckOut value)? checkOut,
    TResult Function(myOrdersResult value)? myOrdersResult,
    required TResult orElse(),
  }) {
    if (myOrdersResult != null) {
      return myOrdersResult(this);
    }
    return orElse();
  }
}

abstract class myOrdersResult implements ProceedToCheckoutEvent {
  const factory myOrdersResult() = _$myOrdersResult;
}

/// @nodoc
mixin _$ProceedToCheckoutState {
  dynamic get proceedToCheckoutModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProceedToCheckoutStateCopyWith<ProceedToCheckoutState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProceedToCheckoutStateCopyWith<$Res> {
  factory $ProceedToCheckoutStateCopyWith(ProceedToCheckoutState value,
          $Res Function(ProceedToCheckoutState) then) =
      _$ProceedToCheckoutStateCopyWithImpl<$Res, ProceedToCheckoutState>;
  @useResult
  $Res call({dynamic proceedToCheckoutModel, bool isLoading, bool hasError});
}

/// @nodoc
class _$ProceedToCheckoutStateCopyWithImpl<$Res,
        $Val extends ProceedToCheckoutState>
    implements $ProceedToCheckoutStateCopyWith<$Res> {
  _$ProceedToCheckoutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proceedToCheckoutModel = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_value.copyWith(
      proceedToCheckoutModel: freezed == proceedToCheckoutModel
          ? _value.proceedToCheckoutModel
          : proceedToCheckoutModel // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
    implements $ProceedToCheckoutStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic proceedToCheckoutModel, bool isLoading, bool hasError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProceedToCheckoutStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? proceedToCheckoutModel = freezed,
    Object? isLoading = null,
    Object? hasError = null,
  }) {
    return _then(_$_Initial(
      proceedToCheckoutModel: freezed == proceedToCheckoutModel
          ? _value.proceedToCheckoutModel
          : proceedToCheckoutModel // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {required this.proceedToCheckoutModel,
      required this.isLoading,
      required this.hasError});

  @override
  final dynamic proceedToCheckoutModel;
  @override
  final bool isLoading;
  @override
  final bool hasError;

  @override
  String toString() {
    return 'ProceedToCheckoutState(proceedToCheckoutModel: $proceedToCheckoutModel, isLoading: $isLoading, hasError: $hasError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other.proceedToCheckoutModel, proceedToCheckoutModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasError, hasError) ||
                other.hasError == hasError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(proceedToCheckoutModel),
      isLoading,
      hasError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements ProceedToCheckoutState {
  const factory _Initial(
      {required final dynamic proceedToCheckoutModel,
      required final bool isLoading,
      required final bool hasError}) = _$_Initial;

  @override
  dynamic get proceedToCheckoutModel;
  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
