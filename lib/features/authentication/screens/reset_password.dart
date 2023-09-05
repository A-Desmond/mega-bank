import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega_bank/features/Reuseable/auth_button.dart';
import 'package:mega_bank/features/Reuseable/logo.dart';
import 'package:mega_bank/features/Reuseable/text_field.dart';
import 'package:mega_bank/route/route_name.dart';
import 'package:mega_bank/theme/app_colors.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.kBlue,
      appBar: PreferredSize(
          preferredSize: Size(size.width, 50),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Row(
              children: [
                const SizedBox(width: 5),
                GestureDetector(
                  onTap: () => context.pop(),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
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
          )),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomTextField(hintText: 'New Password'),
                const SizedBox(height: 20),
                const CustomTextField(hintText: 'Confirm Password'),
                const SizedBox(height: 80),
                CustomButton(
                  title: 'Reset Password',
                  ontap: () => context.pushNamed(RouteName.home),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
