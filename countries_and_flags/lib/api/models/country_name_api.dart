import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'country_name_api.freezed.dart';
part 'country_name_api.g.dart';

@freezed
class CountryNameApi with _$CountryNameApi {
  const factory CountryNameApi(
      {required String common, required String official}) = _CountryNameApi;
  factory CountryNameApi.fromJson(Map<String, dynamic> json) =>
      _$CountryNameApiFromJson(json);
}
