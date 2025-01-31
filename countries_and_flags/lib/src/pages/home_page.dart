import 'package:countries_and_flags/src/providers/country_provider.dart';
import 'package:countries_and_flags/src/providers/favorite_country_provider.dart';
import 'package:countries_and_flags/src/providers/search_country_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:reactive_forms/reactive_forms.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final form = FormGroup({'query': FormControl<String>(value: '')});

  String? _query;

  @override
  Widget build(BuildContext context) {
    final countries = ref.watch(countriesProvider);
    final favorite = ref.watch(favoriteCountryProviderProvider);
    final result = ref.watch(searchProvider(_query ?? 'name'));
    final favoriteAmount = ref
        .watch(favoriteCountryProviderProvider.select((value) => value.length));

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Paesi nel mondo',
                style: TextStyle(fontWeight: FontWeight.w600))),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge.count(
              count: favoriteAmount,
              isLabelVisible: favoriteAmount > 0,
              child: IconButton(
                onPressed: () => context.pushNamed('favorite'),
                icon: const Icon(Icons.favorite),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ReactiveForm(
              formGroup: form,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ReactiveTextField<String>(
                    formControlName: 'query',
                    decoration: InputDecoration(
                      hintText: "Enter country name",
                      label: const Text(""),
                      suffixIcon: IconButton(
                        onPressed: () {
                          form.control('query').value = null;
                          setState(() {
                            _query = null;
                          });
                        },
                        icon: const Icon(Icons.cancel),
                      ),
                    ),
                    onSubmitted: (control) {
                      setState(() {
                        _query = control.value;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: switch (_query == null ? countries : result) {
                AsyncData(:final value) => GridView.count(
                    crossAxisCount: 2,
                    children: [
                      for (final country in value)
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListTile(
                            onTap: () {
                              context.push('/${country.name.common}');
                            },
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    icon: Icon(
                                      favorite.contains(country)
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: favorite.contains(country)
                                          ? Colors.red
                                          : Colors.red,
                                    ),
                                    onPressed: () {
                                      ref
                                          .read(favoriteCountryProviderProvider
                                              .notifier)
                                          .toggleFavorite(country);
                                    },
                                  ),
                                ),
                                Center(
                                  child: Image.network(
                                    country.flags.png,
                                    fit: BoxFit.contain,
                                    height: 150,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Center(
                                  child: Expanded(
                                    child: Text(
                                      '${country.cca2} - ${country.name.common} ',
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                AsyncError() => const Center(
                    child: Text(
                      'Errore nel caricamento dei dati',
                    ),
                  ),
                _ => const Center(child: CircularProgressIndicator())
              },
            ),
          ],
        ),
      ),
    );
  }
}
