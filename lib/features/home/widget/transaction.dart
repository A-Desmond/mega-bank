import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega_bank/enums/transaction_type_enum.dart';
import 'package:mega_bank/features/Reuseable/bottom_sheet.dart';
import 'package:mega_bank/features/home/screens/transaction_details.dart';
import 'package:mega_bank/model/transaction_model.dart';
import 'package:mega_bank/theme/app_colors.dart';

import '../../Reuseable/transaction_type.dart';

class TransactionTile extends StatelessWidget {
  final Transaction transaction;

  const TransactionTile({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () => bottomSheet(context, TransactionDetails(transaction: transaction)),
           
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: transaction.transactionDirection == 'D'
                  ? AppColor.kBlue.withOpacity(0.1)
                  : AppColor.kYellow.withOpacity(0.1)),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset(transaction.transactionDirection == 'D'
                ? 'assets/debit.svg'
                : 'assets/credit.svg'),
          ),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'GHS ${transaction.transactionAmount.toString()}0',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            TransactionType(
                tnxType: transaction.transactionDirection == 'D'
                    ? TnxType.debit
                    : TnxType.credit),
            const Spacer(),
            Text(
              transaction.transactionDate,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ],
        ),
        subtitle: Row(
          children: [
            Text(
              '#',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: transaction.transactionDirection == 'D'
                      ? AppColor.kBlue
                      : AppColor.kYellow),
            ),
            Text(transaction.transactionNarration),
          ],
        ));
  }
}
