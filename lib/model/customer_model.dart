import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed

class Customer with _$Customer{
  const factory Customer({
    required String customerID,
    required String customerName,
    required String gender,
    required String title
  }) = _Customer;

   factory Customer.fromJson(Map<String, Object?> json)
      => _$CustomerFromJson(json);
}