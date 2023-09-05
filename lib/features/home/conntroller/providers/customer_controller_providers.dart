
import 'package:mega_bank/features/home/conntroller/customer_controller.dart';
import 'package:mega_bank/model/customer_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../model/transaction_model.dart';
part 'customer_controller_providers.g.dart';

@riverpod
Future<List<Transaction>> transactionFuture(TransactionFutureRef ref) {
  return ref.read(customerControllerProvider.notifier).getTransactions();
}

@riverpod
Future<Customer> customerFuture(CustomerFutureRef ref) {
  return ref.read(customerControllerProvider.notifier).getCustomerData();
}