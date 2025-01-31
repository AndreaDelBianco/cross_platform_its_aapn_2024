import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'country_flags_api.freezed.dart';
part 'country_flags_api.g.dart';

@freezed
class CountryFlagsApi with _$CountryFlagsApi {
  const factory CountryFlagsApi(
      {required String png,
      required String svg,
      required String alt}) = _CountryFlagsApi;
  factory CountryFlagsApi.fromJson(Map<String, dynamic> json) =>
      _$CountryFlagsApiFromJson(json);
}
