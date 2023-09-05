
import 'package:mega_bank/api/customer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'customer_providers.g.dart';

@riverpod
CustomerAPI customer(CustomerRef ref) => CustomerAPI();