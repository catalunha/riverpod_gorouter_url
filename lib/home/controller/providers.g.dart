// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

@ProviderFor(Home)
const homeProvider = HomeProvider._();

final class HomeProvider extends $NotifierProvider<Home, String?> {
  const HomeProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'homeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$homeHash();

  @$internal
  @override
  Home create() => Home();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$homeHash() => r'39f8cf4a18eb16b3949a6152fe0209a76110920f';

abstract class _$Home extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(homeGet)
const homeGetProvider = HomeGetFamily._();

final class HomeGetProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const HomeGetProvider._({
    required HomeGetFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'homeGetProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$homeGetHash();

  @override
  String toString() {
    return r'homeGetProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    final argument = this.argument as String;
    return homeGet(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is HomeGetProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$homeGetHash() => r'111b22f14a1214363c28ac60715ecba7373d8fd3';

final class HomeGetFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<String>, String> {
  const HomeGetFamily._()
    : super(
        retry: null,
        name: r'homeGetProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  HomeGetProvider call(String id) =>
      HomeGetProvider._(argument: id, from: this);

  @override
  String toString() => r'homeGetProvider';
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
