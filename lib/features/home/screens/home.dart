import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mega_bank/features/home/conntroller/providers/customer_controller_providers.dart';
import 'package:mega_bank/features/home/widget/transaction.dart';
import 'package:mega_bank/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(color: AppColor.kYellow),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Account Balance',
                        style: TextStyle(
                            fontSize: 19,
                            color: Colors.white.withOpacity(0.8))),
                    const SizedBox(height: 2),
                    const Text(
                      'GHS 10,000.00',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Text('Checking Account',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white.withOpacity(0.8))),
                        const Spacer(),
                        Text('123456875893',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white.withOpacity(0.8))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 38,
            decoration: BoxDecoration(
              color: AppColor.kBlue.withOpacity(0.1),
            ),
            child: const Center(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Recent Transactions',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: AppColor.kBlue),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Consumer(builder: (context, ref, child) {
            final transaction = ref.watch(transactionFutureProvider);
            return transaction.when(
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
          }))
        ],
      ),
    );
  }
}
