// TODO: create the api class here, then wrap it with riverpod as alwaysfd
import 'package:dio/dio.dart';
import 'package:pokedex/api/http_client.dart';
import 'package:pokedex/api/models/pokemon.api.model.dart';
import 'package:pokedex/api/models/pokemon_response.api.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'poke_api.g.dart';

@riverpod
PokeApi pokeApi(PokeApiRef ref) {
  final client = ref.watch(httpClientProvider);
  return PokeApi(client);
}

class PokeApi {
  const PokeApi(this.client);
  final Dio client;

  Future<List<PokemonApiModel>> getList() async {
    final result =
        await client.get<Map<String, dynamic>>('/pokemon?limit=10000');
    final response = PokemonResponseApiModel.fromJson(result.data!);
    return response.results;
  }
}
