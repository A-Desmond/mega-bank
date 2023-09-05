import 'package:flutter/material.dart';
import 'package:mega_bank/enums/transaction_type_enum.dart';
import 'package:mega_bank/theme/app_colors.dart';

class TransactionType extends StatelessWidget {
  final TnxType tnxType;
  const TransactionType({super.key, required this.tnxType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 30,
      decoration: BoxDecoration(
          color: tnxType == TnxType.debit
              ? AppColor.kBlue.withOpacity(0.05)
              : AppColor.kYellow.withOpacity(0.05),
          borderRadius: BorderRadius.circular(9)),
      child: Center(
        child: Text(
          tnxType == TnxType.debit ? 'Debit' : 'Credit',
          style: TextStyle(
              fontSize: 12,
              color:
                  tnxType == TnxType.debit ? AppColor.kBlue : AppColor.kYellow,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
