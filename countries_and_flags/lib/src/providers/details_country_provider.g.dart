// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_country_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$countryDetailsHash() => r'0b4eabb6cc8eb242d293d4770c0fbca48a4b4877';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [countryDetails].
@ProviderFor(countryDetails)
const countryDetailsProvider = CountryDetailsFamily();

/// See also [countryDetails].
class CountryDetailsFamily extends Family<AsyncValue<CountryModel>> {
  /// See also [countryDetails].
  const CountryDetailsFamily();

  /// See also [countryDetails].
  CountryDetailsProvider call(
    String query,
  ) {
    return CountryDetailsProvider(
      query,
    );
  }

  @override
  CountryDetailsProvider getProviderOverride(
    covariant CountryDetailsProvider provider,
  ) {
    return call(
      provider.query,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'countryDetailsProvider';
}

/// See also [countryDetails].
class CountryDetailsProvider extends AutoDisposeFutureProvider<CountryModel> {
  /// See also [countryDetails].
  CountryDetailsProvider(
    String query,
  ) : this._internal(
          (ref) => countryDetails(
            ref as CountryDetailsRef,
            query,
          ),
          from: countryDetailsProvider,
          name: r'countryDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$countryDetailsHash,
          dependencies: CountryDetailsFamily._dependencies,
          allTransitiveDependencies:
              CountryDetailsFamily._allTransitiveDependencies,
          query: query,
        );

  CountryDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<CountryModel> Function(CountryDetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CountryDetailsProvider._internal(
        (ref) => create(ref as CountryDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CountryModel> createElement() {
    return _CountryDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CountryDetailsProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CountryDetailsRef on AutoDisposeFutureProviderRef<CountryModel> {
  /// The parameter `query` of this provider.
  String get query;
}

class _CountryDetailsProviderElement
    extends AutoDisposeFutureProviderElement<CountryModel>
    with CountryDetailsRef {
  _CountryDetailsProviderElement(super.provider);

  @override
  String get query => (origin as CountryDetailsProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
