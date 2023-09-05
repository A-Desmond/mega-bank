import 'package:flutter/material.dart';

class TransactionDetailsTile extends StatelessWidget {
  final String title;
  final String details;
  bool isAmount;
  TransactionDetailsTile({
    super.key,
    required this.details,
    required this.title,
    this.isAmount = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title),
        const Spacer(),
        Text(
          details,
          style: TextStyle(fontWeight: isAmount ? FontWeight.bold : null),
        ),
      ],
    );
  }
}
