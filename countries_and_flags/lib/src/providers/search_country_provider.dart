import 'package:countries_and_flags/api/country_api.dart';
import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_country_provider.g.dart';

@riverpod
FutureOr<List<CountryModel>> search(SearchRef ref, String query) async {
  final api = ref.watch(countryApiProvider);
  final result = await api.getCountryByName(query);
  return result;
}
