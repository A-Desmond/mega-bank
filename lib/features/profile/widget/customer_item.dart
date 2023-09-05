import 'package:flutter/material.dart';
import 'package:mega_bank/theme/app_colors.dart';

class CustomerItem extends StatelessWidget {
  final String title;
  final String subtitle;
  const CustomerItem({
    super.key,
    required this.subtitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title.toUpperCase(),
            style: const TextStyle(color: AppColor.kBlue, fontSize: 17),
          ),
          Text(
            subtitle,
            style: const TextStyle(color: AppColor.kBlue),
          ),
        ],
      ),
    );
  }
}
