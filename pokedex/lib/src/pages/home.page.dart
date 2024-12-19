import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex/router.dart';
import 'package:pokedex/src/pages/saved.page.dart';
import 'package:pokedex/src/providers/poke.provider.dart';
import 'package:pokedex/src/providers/saved_pokemon.provider.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemon = ref.watch(pokemonProvider);
    final saved = ref.watch(savedPokemonProvider);
    final savedAmount =
        ref.watch(savedPokemonProvider.select((value) => value.length));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex!'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge.count(
              count: savedAmount,
              isLabelVisible: savedAmount > 0,
              child: IconButton(
                onPressed: () {
                  context.pushNamed('saved');
                },
                icon: const Icon(
                  Icons.favorite,
                ),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: switch (pokemon) {
          AsyncData(:final value) => ListView.builder(
              itemCount: value.length,
              itemBuilder: (context, index) {
                final result = value[index];
                return ListTile(
                  onTap: () {},
                  title: Text(result.name),
                  trailing: IconButton(
                    onPressed: () {
                      saved.add(result);
                    },
                    icon: const Icon(Icons.save),
                  ),
                );
              },
            ),
          AsyncError() => const Center(child: Text('An error occurred.')),
          _ => const Center(child: CircularProgressIndicator()),
        },
      ),
    );
  }
}
