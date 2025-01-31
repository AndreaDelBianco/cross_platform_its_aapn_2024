import 'package:countries_and_flags/api/country_api.dart';
import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'details_country_provider.g.dart';

@riverpod
FutureOr<CountryModel> countryDetails(
    CountryDetailsRef ref, String query) async {
  final api = ref.watch(countryApiProvider);
  final result = await api.getCountryByName(query);
  return result.first;
}
