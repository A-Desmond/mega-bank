import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mega_bank/features/home/conntroller/providers/customer_controller_providers.dart';
import 'package:mega_bank/features/home/widget/transaction.dart';
import 'package:mega_bank/model/transaction_model.dart';

class CreditTransaction extends ConsumerWidget {
  const CreditTransaction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Transaction> creditList = [];
    final creditTransactions = ref.watch(transactionFutureProvider).value!;
    for (final transaction in creditTransactions) {
      if (transaction.transactionDirection == 'C') {
        creditList.add(transaction);
      }
    }
    return ListView.separated(
      itemCount: creditList.length,
      itemBuilder: (context, index) {
        return TransactionTile(
          transaction: creditList[index],
        );
      },
      separatorBuilder: (context, index) => const Divider(
        thickness: 0.5,
      ),
    );
  }
}
