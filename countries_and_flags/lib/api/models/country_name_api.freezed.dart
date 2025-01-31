// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_name_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CountryNameApi _$CountryNameApiFromJson(Map<String, dynamic> json) {
  return _CountryNameApi.fromJson(json);
}

/// @nodoc
mixin _$CountryNameApi {
  String get common => throw _privateConstructorUsedError;
  String get official => throw _privateConstructorUsedError;

  /// Serializes this CountryNameApi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CountryNameApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CountryNameApiCopyWith<CountryNameApi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryNameApiCopyWith<$Res> {
  factory $CountryNameApiCopyWith(
          CountryNameApi value, $Res Function(CountryNameApi) then) =
      _$CountryNameApiCopyWithImpl<$Res, CountryNameApi>;
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class _$CountryNameApiCopyWithImpl<$Res, $Val extends CountryNameApi>
    implements $CountryNameApiCopyWith<$Res> {
  _$CountryNameApiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CountryNameApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_value.copyWith(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryNameApiImplCopyWith<$Res>
    implements $CountryNameApiCopyWith<$Res> {
  factory _$$CountryNameApiImplCopyWith(_$CountryNameApiImpl value,
          $Res Function(_$CountryNameApiImpl) then) =
      __$$CountryNameApiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String common, String official});
}

/// @nodoc
class __$$CountryNameApiImplCopyWithImpl<$Res>
    extends _$CountryNameApiCopyWithImpl<$Res, _$CountryNameApiImpl>
    implements _$$CountryNameApiImplCopyWith<$Res> {
  __$$CountryNameApiImplCopyWithImpl(
      _$CountryNameApiImpl _value, $Res Function(_$CountryNameApiImpl) _then)
      : super(_value, _then);

  /// Create a copy of CountryNameApi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? common = null,
    Object? official = null,
  }) {
    return _then(_$CountryNameApiImpl(
      common: null == common
          ? _value.common
          : common // ignore: cast_nullable_to_non_nullable
              as String,
      official: null == official
          ? _value.official
          : official // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CountryNameApiImpl
    with DiagnosticableTreeMixin
    implements _CountryNameApi {
  const _$CountryNameApiImpl({required this.common, required this.official});

  factory _$CountryNameApiImpl.fromJson(Map<String, dynamic> json) =>
      _$$CountryNameApiImplFromJson(json);

  @override
  final String common;
  @override
  final String official;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CountryNameApi(common: $common, official: $official)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CountryNameApi'))
      ..add(DiagnosticsProperty('common', common))
      ..add(DiagnosticsProperty('official', official));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryNameApiImpl &&
            (identical(other.common, common) || other.common == common) &&
            (identical(other.official, official) ||
                other.official == official));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, common, official);

  /// Create a copy of CountryNameApi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryNameApiImplCopyWith<_$CountryNameApiImpl> get copyWith =>
      __$$CountryNameApiImplCopyWithImpl<_$CountryNameApiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CountryNameApiImplToJson(
      this,
    );
  }
}

abstract class _CountryNameApi implements CountryNameApi {
  const factory _CountryNameApi(
      {required final String common,
      required final String official}) = _$CountryNameApiImpl;

  factory _CountryNameApi.fromJson(Map<String, dynamic> json) =
      _$CountryNameApiImpl.fromJson;

  @override
  String get common;
  @override
  String get official;

  /// Create a copy of CountryNameApi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CountryNameApiImplCopyWith<_$CountryNameApiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
