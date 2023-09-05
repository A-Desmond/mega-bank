// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transaction _$$_TransactionFromJson(Map<String, dynamic> json) =>
    _$_Transaction(
      customerID: json['customerID'] as String,
      transactionDate: json['transactionDate'] as String,
      transactionAmount: (json['transactionAmount'] as num).toDouble(),
      transactionDirection: json['transactionDirection'] as String,
      transactionNarration: json['transactionNarration'] as String,
    );

Map<String, dynamic> _$$_TransactionToJson(_$_Transaction instance) =>
    <String, dynamic>{
      'customerID': instance.customerID,
      'transactionDate': instance.transactionDate,
      'transactionAmount': instance.transactionAmount,
      'transactionDirection': instance.transactionDirection,
      'transactionNarration': instance.transactionNarration,
    };
