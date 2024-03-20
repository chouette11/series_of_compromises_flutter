// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'presentation_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$objectPositionListHash() =>
    r'593c55ceda0bf9f69571d81fd3815e6413ab0955';

/// See also [ObjectPositionList].
@ProviderFor(ObjectPositionList)
final objectPositionListProvider =
    NotifierProvider<ObjectPositionList, List<PositionEntity>>.internal(
  ObjectPositionList.new,
  name: r'objectPositionListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$objectPositionListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ObjectPositionList = Notifier<List<PositionEntity>>;
String _$limitTimeHash() => r'71d4c1309866b62184df56c11be77e8ad0567d73';

/// See also [LimitTime].
@ProviderFor(LimitTime)
final limitTimeProvider = AutoDisposeNotifierProvider<LimitTime, int>.internal(
  LimitTime.new,
  name: r'limitTimeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$limitTimeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LimitTime = AutoDisposeNotifier<int>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
