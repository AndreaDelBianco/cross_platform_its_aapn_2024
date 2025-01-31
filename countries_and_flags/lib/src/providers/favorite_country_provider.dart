import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'favorite_country_provider.g.dart';

@riverpod
class FavoriteCountryProvider extends _$FavoriteCountryProvider {
  @override
  List<CountryModel> build() {
    return [];
  }

  void addFlag(CountryModel flag) {
    if (!state.any((element) => element.name == flag.name)) {
      state = [...state, flag];
    }
  }

  void removeFlag(CountryModel flag) {
    state = state.where((element) => element.name != flag.name).toList();
  }

  void toggleFavorite(CountryModel flag) {
    if (state.any((element) => element.name == flag.name)) {
      removeFlag(flag);
    } else {
      addFlag(flag);
    }
  }
}
