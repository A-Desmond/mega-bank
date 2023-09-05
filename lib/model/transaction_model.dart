import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';


part 'transaction_model.freezed.dart';
part 'transaction_model.g.dart';


@freezed

class Transaction with _$Transaction{
  const factory Transaction({
    required String customerID,
    required String transactionDate,
    required double transactionAmount,
    required String transactionDirection,
    required String transactionNarration,
  }) = _Transaction;

   factory Transaction.fromJson(Map<String, Object?> json)
      => _$TransactionFromJson(json);
}