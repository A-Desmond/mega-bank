import 'dart:io';

import 'package:flutter/services.dart';

class CustomerAPI {
  Future<String> getCustomerData() async {
    try {
      final String response =
          await rootBundle.loadString('assets/data/customer.json');

      return response;
    } on FileSystemException {
      rethrow;
    }
  }
}
