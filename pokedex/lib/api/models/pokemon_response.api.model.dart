import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:pokedex/api/models/pokemon.api.model.dart';

part 'pokemon_response.api.model.freezed.dart';
part 'pokemon_response.api.model.g.dart';

@freezed
class PokemonResponseApiModel with _$PokemonResponseApiModel {
  const factory PokemonResponseApiModel({
    required List<PokemonApiModel> results,
  }) = _PokemonResponseApiModel;
  factory PokemonResponseApiModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonResponseApiModelFromJson(json);
}
