// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  String get customerID => throw _privateConstructorUsedError;
  String get transactionDate => throw _privateConstructorUsedError;
  double get transactionAmount => throw _privateConstructorUsedError;
  String get transactionDirection => throw _privateConstructorUsedError;
  String get transactionNarration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {String customerID,
      String transactionDate,
      double transactionAmount,
      String transactionDirection,
      String transactionNarration});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? transactionDate = null,
    Object? transactionAmount = null,
    Object? transactionDirection = null,
    Object? transactionNarration = null,
  }) {
    return _then(_value.copyWith(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAmount: null == transactionAmount
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionDirection: null == transactionDirection
          ? _value.transactionDirection
          : transactionDirection // ignore: cast_nullable_to_non_nullable
              as String,
      transactionNarration: null == transactionNarration
          ? _value.transactionNarration
          : transactionNarration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$_TransactionCopyWith(
          _$_Transaction value, $Res Function(_$_Transaction) then) =
      __$$_TransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String customerID,
      String transactionDate,
      double transactionAmount,
      String transactionDirection,
      String transactionNarration});
}

/// @nodoc
class __$$_TransactionCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$_Transaction>
    implements _$$_TransactionCopyWith<$Res> {
  __$$_TransactionCopyWithImpl(
      _$_Transaction _value, $Res Function(_$_Transaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customerID = null,
    Object? transactionDate = null,
    Object? transactionAmount = null,
    Object? transactionDirection = null,
    Object? transactionNarration = null,
  }) {
    return _then(_$_Transaction(
      customerID: null == customerID
          ? _value.customerID
          : customerID // ignore: cast_nullable_to_non_nullable
              as String,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as String,
      transactionAmount: null == transactionAmount
          ? _value.transactionAmount
          : transactionAmount // ignore: cast_nullable_to_non_nullable
              as double,
      transactionDirection: null == transactionDirection
          ? _value.transactionDirection
          : transactionDirection // ignore: cast_nullable_to_non_nullable
              as String,
      transactionNarration: null == transactionNarration
          ? _value.transactionNarration
          : transactionNarration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Transaction with DiagnosticableTreeMixin implements _Transaction {
  const _$_Transaction(
      {required this.customerID,
      required this.transactionDate,
      required this.transactionAmount,
      required this.transactionDirection,
      required this.transactionNarration});

  factory _$_Transaction.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionFromJson(json);

  @override
  final String customerID;
  @override
  final String transactionDate;
  @override
  final double transactionAmount;
  @override
  final String transactionDirection;
  @override
  final String transactionNarration;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Transaction(customerID: $customerID, transactionDate: $transactionDate, transactionAmount: $transactionAmount, transactionDirection: $transactionDirection, transactionNarration: $transactionNarration)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Transaction'))
      ..add(DiagnosticsProperty('customerID', customerID))
      ..add(DiagnosticsProperty('transactionDate', transactionDate))
      ..add(DiagnosticsProperty('transactionAmount', transactionAmount))
      ..add(DiagnosticsProperty('transactionDirection', transactionDirection))
      ..add(DiagnosticsProperty('transactionNarration', transactionNarration));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transaction &&
            (identical(other.customerID, customerID) ||
                other.customerID == customerID) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.transactionAmount, transactionAmount) ||
                other.transactionAmount == transactionAmount) &&
            (identical(other.transactionDirection, transactionDirection) ||
                other.transactionDirection == transactionDirection) &&
            (identical(other.transactionNarration, transactionNarration) ||
                other.transactionNarration == transactionNarration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, customerID, transactionDate,
      transactionAmount, transactionDirection, transactionNarration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      __$$_TransactionCopyWithImpl<_$_Transaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
      {required final String customerID,
      required final String transactionDate,
      required final double transactionAmount,
      required final String transactionDirection,
      required final String transactionNarration}) = _$_Transaction;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$_Transaction.fromJson;

  @override
  String get customerID;
  @override
  String get transactionDate;
  @override
  double get transactionAmount;
  @override
  String get transactionDirection;
  @override
  String get transactionNarration;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionCopyWith<_$_Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}
