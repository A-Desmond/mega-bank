import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mega_bank/features/home/conntroller/providers/customer_controller_providers.dart';
import 'package:mega_bank/features/home/widget/transaction.dart';
import 'package:mega_bank/model/transaction_model.dart';

class DebitTransaction extends ConsumerWidget {
  const DebitTransaction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Transaction> debitList = [];
    final debitTransactions = ref.watch(transactionFutureProvider).value!;
    for (final transaction in debitTransactions) {
      if (transaction.transactionDirection == 'D') {
        debitList.add(transaction);
      }
    }
    return ListView.separated(
        itemCount: debitList.length,
        itemBuilder: (context, index) {
          return TransactionTile(
            transaction: debitList[index],
          );
        },
         separatorBuilder: (context, index) => const Divider(
              thickness: 0.5,
            ),
        );
  }
}
