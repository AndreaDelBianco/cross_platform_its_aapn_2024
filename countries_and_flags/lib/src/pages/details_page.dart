import 'package:countries_and_flags/src/providers/details_country_provider.dart';
import 'package:countries_and_flags/src/providers/favorite_country_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage({super.key, required this.query});
  final String query;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final country = ref.watch(countryDetailsProvider(query));
    final favorite = ref.watch(favoriteCountryProviderProvider);
    return Scaffold(
      appBar: AppBar(
        title: switch (country) {
          AsyncData(:final value) => Text(value.name.common,
              style: const TextStyle(fontWeight: FontWeight.w600)),
          AsyncError() => const Text('data not found'),
          _ => const CircularProgressIndicator(),
        },
        actions: [
          IconButton(
            onPressed: () {
              switch (country) {
                case AsyncData(:final value):
                  ref
                      .read(favoriteCountryProviderProvider.notifier)
                      .toggleFavorite(value);
                  break;
                case AsyncError():
                  const Text('Error');
                  break;
                case _:
                  break;
              }
            },
            icon: switch (country) {
              AsyncData(:final value) => Icon(
                  favorite.any((element) => element.cca2 == value.cca2)
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: favorite.any((element) => element.cca2 == value.cca2)
                      ? Colors.red
                      : Colors.red,
                ),
              AsyncError() => const Icon(Icons.error),
              _ => const Icon(Icons.favorite_border),
            },
          ),
        ],
      ),
      body: switch (country) {
        AsyncData(:final value) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.network(
                        value.flags.png,
                        height: 150,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        '${value.cca2} - ${value.name.common}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        AsyncError() => const Center(child: Text('data not found')),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
