import 'package:go_router/go_router.dart';
import 'package:pokedex/logger.dart';
import 'package:pokedex/src/pages/home.page.dart';
import 'package:pokedex/src/pages/saved.page.dart';
import 'package:talker_flutter/talker_flutter.dart';

final router = GoRouter(
  observers: [
    TalkerRouteObserver(talker),
  ],
  routes: [
    // TODO: add routes here...!
    GoRoute(
      path: '/',
      name: 'Home',
      builder: (context, state) => const Home(),
    ),
    GoRoute(
      path: '/saved',
      name: 'saved',
      builder: (context, state) => const Saved(),
    )
  ],
);
