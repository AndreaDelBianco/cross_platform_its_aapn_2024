import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/src/providers/saved_pokemon.provider.dart';

class Saved extends ConsumerWidget {
  const Saved({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final saved = ref.watch(savedPokemonProvider);
    final savedNotifier =
        ref.read(savedPokemonProvider.notifier); // Notifier per modifiche

    return Scaffold(
      appBar: AppBar(
        title: const Text('Saved Pokémon'),
      ),
      body: saved.isEmpty
          ? const Center(child: Text('No Pokémon saved.'))
          : ListView.builder(
              itemCount: saved.length,
              itemBuilder: (context, index) {
                final pokemon = saved[index];
                return ListTile(
                  title: Text(pokemon.name),
                  trailing: IconButton(
                    onPressed: () {
                      savedNotifier
                          .remove(pokemon); // Usa il notifier per modifiche
                    },
                    icon: const Icon(Icons.remove),
                  ),
                );
              },
            ),
    );
  }
}
