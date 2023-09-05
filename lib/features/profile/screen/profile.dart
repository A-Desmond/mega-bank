import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mega_bank/features/Reuseable/clippers.dart';
import 'package:mega_bank/features/Reuseable/logo.dart';
import 'package:mega_bank/features/authentication/screens/change_password.dart';
import 'package:mega_bank/features/profile/widget/cutomer_details.dart';
import 'package:mega_bank/theme/app_colors.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const SizedBox(
        height: 40,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(),
            Text(
              'App version',
              style: TextStyle(color: AppColor.kBlue),
            )
          ],
        ),
      ),
      appBar: PreferredSize(
          preferredSize: Size(size.width, 90),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 90,
              color: AppColor.kBlue,
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
            ),
          )),
      body: Center(
        child: Column(
          children: [
            Container(
              color: AppColor.profileCardColor,
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  ClipPath(
                    clipper: LeftSkewCut(),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: 150,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/profile.png'))),
                    ),
                  ),
                  const CustomerDetailsCard(),
                ],
              ),
            ),
            Container(
              width: size.width,
              height: 40,
              decoration: BoxDecoration(color: AppColor.kBlue.withOpacity(0.1)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Account Settings',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: AppColor.kBlue),
                ),
              ),
            ),
            ListTile(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChangePassword())),
              leading: SvgPicture.asset('assets/password.svg'),
              title: const Text('Change Account Password',
                  style: TextStyle(color: AppColor.kBlue)),
            ),
            const Divider(),
            ListTile(
              leading: SvgPicture.asset('assets/logout.svg'),
              title:
                  const Text('Logout', style: TextStyle(color: AppColor.kBlue)),
            ),
            Container(
              width: size.width,
              height: 40,
              decoration: BoxDecoration(color: AppColor.kBlue.withOpacity(0.1)),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'About',
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: AppColor.kBlue),
                ),
              ),
            ),
            const ListTile(
              title: Text('Terms and Conditions',
                  style: TextStyle(color: AppColor.kBlue)),
            ),
            const Divider(),
            const ListTile(
              title: Text('Privacy Policy',
                  style: TextStyle(color: AppColor.kBlue)),
            ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
