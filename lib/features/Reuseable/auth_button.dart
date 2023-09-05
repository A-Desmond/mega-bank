import 'package:flutter/material.dart';
import 'package:mega_bank/theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  const CustomButton({super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.kYellow,
            fixedSize: Size(size.width, 60),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18))),
        onPressed: ontap,
        child: Text(
          title,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        ));
  }
}
