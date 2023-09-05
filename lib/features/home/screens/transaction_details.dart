import 'package:flutter/material.dart';
import 'package:mega_bank/features/home/widget/transaction_details_tile.dart';
import 'package:mega_bank/model/transaction_model.dart';

class TransactionDetails extends StatelessWidget {
  final Transaction transaction;
  const TransactionDetails({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(15))),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(height: 5),
            Container(
              height: 6,
              width: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey.withOpacity(0.5)),
            ),
            const SizedBox(height: 15),
            const Text(
              'Transaction Details',
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(height: 30),
            TransactionDetailsTile(
              title: 'Balance Before Transaction ',
              details: 'GHS 0.00',
              isAmount: true,
            ),
            TransactionDetailsTile(
                title: 'Balance After Transaction ',
                isAmount: true,
                details: 'GHS ${transaction.transactionAmount.toString()}0'),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            TransactionDetailsTile(
                title: 'Transaction Date',
                details: transaction.transactionDate),
            TransactionDetailsTile(
                title: 'Transaction  Direction',
                details: transaction.transactionDirection == 'C'
                    ? 'Credit'
                    : 'Debit'),
            TransactionDetailsTile(
                title: 'Transaction  Narration',
                details: transaction.transactionNarration),
          ],
        ),
      ),
    );
  }
}
