import 'dart:convert';

import 'package:mega_bank/api/providers/customer_providers.dart';
import 'package:mega_bank/model/customer_model.dart';
import 'package:mega_bank/model/transaction_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'customer_controller.g.dart';

@riverpod
class CustomerController extends _$CustomerController {
  @override
  FutureOr<void> build() {
    return null;
  }

  Future<List<Transaction>> getTransactions() async {
    List<Transaction> transactionList = [];
    final customerAPI = await ref.read(customerProvider).getCustomerData();
    final customerTnx = await jsonDecode(customerAPI);
    customerTnx['customerTransactionData'].forEach((transaction) {
      transactionList.add(Transaction.fromJson(transaction));
    });
    return transactionList;
  }

  Future<Customer> getCustomerData()async{
   final customerAPI = await ref.read(customerProvider).getCustomerData();
    final customerCredentials = await jsonDecode(customerAPI);
    return Customer.fromJson(customerCredentials['customerStaticData'][0]);
  }

}
