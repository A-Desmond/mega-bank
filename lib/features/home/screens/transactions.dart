import 'package:flutter/material.dart';
import 'package:mega_bank/features/home/screens/all.dart';
import 'package:mega_bank/features/home/screens/credit.dart';
import 'package:mega_bank/features/home/screens/debit.dart';
import 'package:mega_bank/theme/app_colors.dart';

class TransactionsPage extends StatefulWidget {
  const TransactionsPage({super.key});

  @override
  State<TransactionsPage> createState() => _TransactionsPageState();
}

class _TransactionsPageState extends State<TransactionsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColor.kBlue.withOpacity(0.1),
            toolbarHeight: 30,
            centerTitle: false,
            title: const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Transactions',
                style: TextStyle(fontSize: 25),
              ),
            ),
            automaticallyImplyLeading: false,
            bottom: const TabBar(
                labelColor: Colors.black,
                indicatorColor: AppColor.kBlue,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Text('All'),
                  Text('Debit'),
                  Text('Credit'),
                ]),
          ),
          body: const TabBarView(children: [
            AllTransactions(),
            DebitTransaction(),
            CreditTransaction()
          ]),
        ));
  }
}
