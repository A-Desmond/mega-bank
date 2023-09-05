import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mega_bank/features/home/conntroller/providers/customer_controller_providers.dart';
import 'package:mega_bank/features/profile/widget/customer_item.dart';
import 'package:mega_bank/theme/app_colors.dart';

class CustomerDetailsCard extends ConsumerWidget {
  const CustomerDetailsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customer = ref.watch(customerFutureProvider).value!;
    return Container(
      color: AppColor.profileCardColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomerItem(
                  title: 'First Name',
                  subtitle: customer.customerName.split(' ')[0]),
              CustomerItem(
                title: 'Gender',
                subtitle: customer.gender == 'M' ? 'Male' : 'Female',
              ),
              const SizedBox(width: 20),
              CustomerItem(
                title: 'ID',
                subtitle: customer.customerID,
              ),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomerItem(
                title: 'Other Name',
                subtitle: customer.customerName.split(' ')[1],
              ),
              const SizedBox(width: 20),
              CustomerItem(
                title: 'Title',
                subtitle: customer.title,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
