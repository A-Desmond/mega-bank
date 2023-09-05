import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mega_bank/features/Reuseable/logo.dart';
import 'package:mega_bank/features/Reuseable/text_field.dart';
import 'package:mega_bank/route/route_name.dart';
import 'package:mega_bank/theme/app_colors.dart';

import '../../Reuseable/auth_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kBlue,
      bottomNavigationBar: SizedBox(
        child: TextButton(
            onPressed: () => context.pushNamed(RouteName.resetPassword),
            child: const Text(
              'Forgot Password',
              style: TextStyle(color: Colors.white),
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppLogo(
                  width: 70,
                  height: 70,
                ),
                const SizedBox(height: 80),
                const CustomTextField(hintText: 'Email'),
                const SizedBox(height: 20),
                const CustomTextField(hintText: 'Password'),
                const SizedBox(height: 50),
                CustomButton(
                    title: 'Login',
                    ontap: () => context.pushNamed(RouteName.home))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
