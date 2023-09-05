import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mega_bank/features/home/conntroller/providers/customer_controller_providers.dart';
import 'package:mega_bank/features/home/widget/transaction.dart';

class AllTransactions extends ConsumerWidget {
  const AllTransactions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionProvider = ref.watch(transactionFutureProvider);
    return transactionProvider.when(
        data: (transactionList) {
          return ListView.separated(
            itemCount: transactionList.length,
            itemBuilder: (context, index) {
              return TransactionTile(
                transaction: transactionList[index],
              );
            },
            separatorBuilder: (context, index) => const Divider(
              thickness: 0.5,
            ),
          );
        },
        error: (error, stackTrace) => Center(
              child: Text(error.toString()),
            ),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
