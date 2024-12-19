import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pokemon.api.model.freezed.dart';
part 'pokemon.api.model.g.dart';

@freezed
class PokemonApiModel with _$PokemonApiModel {
  const factory PokemonApiModel({required String name, required String url}) =
      _PokemonApiModel;
  factory PokemonApiModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonApiModelFromJson(json);
}
