import 'package:countries_and_flags/src/providers/favorite_country_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FavoritePage extends ConsumerWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorite = ref.watch(favoriteCountryProviderProvider);
    final favoriteNotifier = ref.read(favoriteCountryProviderProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Favorite countries in here!',
                style: TextStyle(fontWeight: FontWeight.w600))),
      ),
      body: favorite.isEmpty
          ? const Center(child: Text('No favorite flags yet!'))
          : ListView.builder(
              itemCount: favorite.length,
              itemBuilder: (context, index) {
                final country = favorite[index];
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: ListTile(
                    onTap: () {
                      context.push('/${country.name.common}');
                    },
                    leading: Text(
                      country.cca2,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w100),
                    ),
                    title: Text(
                      country.name.common,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        favoriteNotifier.removeFlag(country);
                      },
                      icon: const Icon(Icons.favorite, color: Colors.red),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
