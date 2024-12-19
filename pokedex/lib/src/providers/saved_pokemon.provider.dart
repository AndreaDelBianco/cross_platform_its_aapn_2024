import 'package:pokedex/src/models/pokemon.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'saved_pokemon.provider.g.dart';

@riverpod
class SavedPokemon extends _$SavedPokemon {
  @override
  List<PokemonModel> build() {
    return [];
  }

  void add(PokemonModel model) {
    state = [
      model,
      ...state,
    ];
  }

  void remove(PokemonModel model) {
    state = [
      ...state.where(
        (element) => element != model,
      ),
    ];
  }
}
