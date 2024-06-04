import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/screens/character.dart';
import 'package:untitled/screens/filter.dart';
import 'package:untitled/screens/find_page.dart';
import 'package:untitled/screens/list_characters.dart';
import 'package:go_router/go_router.dart';

const String listCharacters = "/list_characters";
// const String gridCharacters = '/grid_characters';
const String character = 'character';
const String filter = '/filter';
const String findPage = '/findPage';

final _router = GoRouter(
  initialLocation: listCharacters,
  //initialLocation: filter,
    //initialLocation: findPage,
  routes: [
    GoRoute(
      path: listCharacters,
      builder: (context, state) => ListCharacters(),
      routes: [
        GoRoute(
          path: character,
          builder: (context, state) => const Character(),
        ),

      ]
    ),

    GoRoute(
      path: filter,
      builder: (context, state) => const Filter(),
    ),
    GoRoute(
      path: findPage,
      builder: (context, state) => const FindPage(),
    ),
  ],
);

void main() {
  runZonedGuarded(() => runApp(const MyApp()),
      (Object error, StackTrace stackTrace) {
    print(error);
    print(stackTrace);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(11, 30, 45, 1),
        primaryColorLight: const Color.fromRGBO(21, 42, 58, 1),
        hintColor: const Color.fromRGBO(91, 105, 117, 1),
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(11, 30, 45, 1),
            error: Colors.red,
            onTertiary: Colors.black45),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

