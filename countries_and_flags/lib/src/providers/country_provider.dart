import 'package:countries_and_flags/api/country_api.dart';
import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'country_provider.g.dart';

@riverpod
FutureOr<List<CountryModel>> countries(CountriesRef ref) async {
  final api = ref.watch(countryApiProvider);
  final response = await api.getAllCountry();
  return response;
}
