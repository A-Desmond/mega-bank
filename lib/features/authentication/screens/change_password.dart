import 'package:flutter/material.dart';
import 'package:mega_bank/features/Reuseable/auth_button.dart';
import 'package:mega_bank/features/Reuseable/logo.dart';
import 'package:mega_bank/features/Reuseable/text_field.dart';
import 'package:mega_bank/features/home/screens/bottom_bar.dart';
import 'package:mega_bank/theme/app_colors.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.kBlue,
      appBar: PreferredSize(
          preferredSize: Size(size.width, 50),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Row(
                children: [
                  const SizedBox(width: 5),
                  const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  const Text(
                    'Back',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: AppLogo(
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextField(hintText: 'Old Password'),
                const SizedBox(height: 20),
                const CustomTextField(hintText: 'New Password'),
                const SizedBox(height: 20),
                const CustomTextField(hintText: 'Confirm Password'),
                const SizedBox(height: 80),
                CustomButton(
                  title: 'Change Password',
                  ontap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const BottomBar())),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
