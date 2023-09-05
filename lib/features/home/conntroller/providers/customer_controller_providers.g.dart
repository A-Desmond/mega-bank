// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_controller_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$transactionFutureHash() => r'9e524469a4c16dc4403fd963b05e7de3c3768ccf';

/// See also [transactionFuture].
@ProviderFor(transactionFuture)
final transactionFutureProvider =
    AutoDisposeFutureProvider<List<Transaction>>.internal(
  transactionFuture,
  name: r'transactionFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$transactionFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef TransactionFutureRef = AutoDisposeFutureProviderRef<List<Transaction>>;
String _$customerFutureHash() => r'9e3aa27a739b771c5c69d3f756907f026e758c96';

/// See also [customerFuture].
@ProviderFor(customerFuture)
final customerFutureProvider = AutoDisposeFutureProvider<Customer>.internal(
  customerFuture,
  name: r'customerFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$customerFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CustomerFutureRef = AutoDisposeFutureProviderRef<Customer>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
