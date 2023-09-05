import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mega_bank/features/Reuseable/logo.dart';
import 'package:mega_bank/features/home/conntroller/providers/customer_controller_providers.dart';
import 'package:mega_bank/route/route_name.dart';

class ProfileHeader extends ConsumerWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customer = ref.watch(customerFutureProvider);

    return customer.when(
        data: (details) {
          return ListTile(
            onTap: () => context.pushNamed(RouteName.profile),
            leading: Image.asset(
              'assets/profile.png',
              fit: BoxFit.cover,
            ),
            title: const Text(
              'Good morning',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w200,
                  color: Colors.white),
            ),
            subtitle: Text(
              '${details.title} ${details.customerName}',
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            trailing: AppLogo(
              height: 30,
              width: 30,
            ),
          );
        },
        error: (error, stackTrace) => Center(
              child: Column(
                children: [
                  Text(error.toString()),
                  TextButton(
                    onPressed: () {
                      ref.invalidate(customerFutureProvider);
                    },
                    child: const Text('Refresh'),
                  )
                ],
              ),
            ),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
