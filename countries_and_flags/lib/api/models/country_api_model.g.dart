// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountryApiModelImpl _$$CountryApiModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CountryApiModelImpl(
      flags: CountryFlagsApi.fromJson(json['flags'] as Map<String, dynamic>),
      name: CountryNameApi.fromJson(json['name'] as Map<String, dynamic>),
      cca2: json['cca2'] as String,
    );

Map<String, dynamic> _$$CountryApiModelImplToJson(
        _$CountryApiModelImpl instance) =>
    <String, dynamic>{
      'flags': instance.flags,
      'name': instance.name,
      'cca2': instance.cca2,
    };
