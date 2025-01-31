// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_flags_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryFlagsApi _$CountryFlagsApiFromJson(Map<String, dynamic> json) {
  return _CountryFlagsApi.fromJson(json);
}

/// @nodoc
mixin _$CountryFlagsApi {
  String get png => throw _privateConstructorUsedError;
  String get svg => throw _privateConstructorUsedError;
  String get alt => throw _privateConstructorUsedError;

  /// Serializes this CountryFlagsApi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryFlagsApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryFlagsApiCopyWith<CountryFlagsApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryFlagsApiCopyWith<$Res> {
  factory $CountryFlagsApiCopyWith(
          CountryFlagsApi value, $Res Function(CountryFlagsApi) then) =
      _$CountryFlagsApiCopyWithImpl<$Res, CountryFlagsApi>;
  @useResult
  $Res call({String png, String svg, String alt});
}

/// @nodoc
class _$CountryFlagsApiCopyWithImpl<$Res, $Val extends CountryFlagsApi>
    implements $CountryFlagsApiCopyWith<$Res> {
  _$CountryFlagsApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryFlagsApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
    Object? svg = null,
    Object? alt = null,
  }) {
    return _then(_value.copyWith(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
      svg: null == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryFlagsApiImplCopyWith<$Res>
    implements $CountryFlagsApiCopyWith<$Res> {
  factory _$$CountryFlagsApiImplCopyWith(_$CountryFlagsApiImpl value,
          $Res Function(_$CountryFlagsApiImpl) then) =
      __$$CountryFlagsApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String png, String svg, String alt});
}

/// @nodoc
class __$$CountryFlagsApiImplCopyWithImpl<$Res>
    extends _$CountryFlagsApiCopyWithImpl<$Res, _$CountryFlagsApiImpl>
    implements _$$CountryFlagsApiImplCopyWith<$Res> {
  __$$CountryFlagsApiImplCopyWithImpl(
      _$CountryFlagsApiImpl _value, $Res Function(_$CountryFlagsApiImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryFlagsApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? png = null,
    Object? svg = null,
    Object? alt = null,
  }) {
    return _then(_$CountryFlagsApiImpl(
      png: null == png
          ? _value.png
          : png // ignore: cast_nullable_to_non_nullable
              as String,
      svg: null == svg
          ? _value.svg
          : svg // ignore: cast_nullable_to_non_nullable
              as String,
      alt: null == alt
          ? _value.alt
          : alt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryFlagsApiImpl
    with DiagnosticableTreeMixin
    implements _CountryFlagsApi {
  const _$CountryFlagsApiImpl(
      {required this.png, required this.svg, required this.alt});

  factory _$CountryFlagsApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryFlagsApiImplFromJson(json);

  @override
  final String png;
  @override
  final String svg;
  @override
  final String alt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryFlagsApi(png: $png, svg: $svg, alt: $alt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryFlagsApi'))
      ..add(DiagnosticsProperty('png', png))
      ..add(DiagnosticsProperty('svg', svg))
      ..add(DiagnosticsProperty('alt', alt));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryFlagsApiImpl &&
            (identical(other.png, png) || other.png == png) &&
            (identical(other.svg, svg) || other.svg == svg) &&
            (identical(other.alt, alt) || other.alt == alt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, png, svg, alt);

  /// Create a copy of CountryFlagsApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryFlagsApiImplCopyWith<_$CountryFlagsApiImpl> get copyWith =>
      __$$CountryFlagsApiImplCopyWithImpl<_$CountryFlagsApiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryFlagsApiImplToJson(
      this,
    );
  }
}

abstract class _CountryFlagsApi implements CountryFlagsApi {
  const factory _CountryFlagsApi(
      {required final String png,
      required final String svg,
      required final String alt}) = _$CountryFlagsApiImpl;

  factory _CountryFlagsApi.fromJson(Map<String, dynamic> json) =
      _$CountryFlagsApiImpl.fromJson;

  @override
  String get png;
  @override
  String get svg;
  @override
  String get alt;

  /// Create a copy of CountryFlagsApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryFlagsApiImplCopyWith<_$CountryFlagsApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
