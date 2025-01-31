import 'package:countries_and_flags/api/http_client_provider.dart';
import 'package:countries_and_flags/api/models/country_api_model.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'country_api.g.dart';

@riverpod
CountryApi countryApi(CountryApiRef ref) {
  final client = ref.watch(httpClientProvider);
  return CountryApi(client);
}

class CountryApi {
  final Dio client;
  CountryApi(this.client);

  Future<List<CountryApiModel>> getAllCountry() async {
    final response =
        await client.get<List<dynamic>>('all?fields=name,flags,cca2');
    return response.data!
        .map((json) => CountryApiModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<List<CountryApiModel>> getCountryByName(String name) async {
    final response =
        await client.get<List<dynamic>>('name/$name?fields=name,flags,cca2');
    return response.data!
        .map((json) => CountryApiModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
