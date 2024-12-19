import 'package:pokedex/api/poke_api.dart';
import 'package:pokedex/src/models/pokemon.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'poke.provider.g.dart';

@riverpod
FutureOr<List<PokemonModel>> pokemon(PokemonRef ref) async {
  final api = ref.watch(pokeApiProvider);
  final results = await api.getList();

  return results;
}
