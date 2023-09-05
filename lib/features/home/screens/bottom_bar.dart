import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega_bank/features/Reuseable/clippers.dart';
import 'package:mega_bank/features/Reuseable/profile_header.dart';
import 'package:mega_bank/features/home/screens/home.dart';
import 'package:mega_bank/features/home/screens/transactions.dart';
import 'package:mega_bank/theme/app_colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomePage(),
    const TransactionsPage(),
  ];
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 120),
          child: Container(
              height: 120,
              color: AppColor.kBlue,
              child: const Padding(
                padding: EdgeInsets.only(top: 30),
                child: ProfileHeader(),
              ))),
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        child: Row(
          children: [
            GestureDetector(
              onTap: () => onTap(0),
              child: ClipPath(
                clipper: LeftSkewCut(),
                child: Container(
                  width: size.width / 2,
                  height: 70,
                  decoration: BoxDecoration(
                    color: currentIndex == 0 ? AppColor.kBlue : Colors.white,
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/home.svg',
                            color: currentIndex == 0
                                ? AppColor.kYellow
                                : AppColor.kBlue),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: currentIndex == 0
                                  ? AppColor.kYellow
                                  : AppColor.kBlue),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
                onTap: () => onTap(1),
                child: ClipPath(
                  clipper: RightSkewCut(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: currentIndex == 1 ? AppColor.kBlue : Colors.white,
                    ),
                    width: size.width / 2,
                    height: 70,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/transaction.svg',
                            color: currentIndex == 1
                                ? AppColor.kYellow
                                : AppColor.kBlue,
                          ),
                          Text(
                            'Transaction',
                            style: TextStyle(
                                color: currentIndex == 1
                                    ? AppColor.kYellow
                                    : AppColor.kBlue),
                          )
                        ],
                      ),
                    ),
                  ),
                )),
        ],
        ),
      ),
    );
  }
}
