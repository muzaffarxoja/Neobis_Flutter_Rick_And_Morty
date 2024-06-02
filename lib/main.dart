import 'package:flutter/material.dart';
import 'package:untitled/screens/character.dart';
import 'package:untitled/screens/filter.dart';
import 'package:untitled/screens/list_characters.dart';
import 'package:untitled/screens/grid_characters.dart';
import 'package:go_router/go_router.dart';

const String listCharacters = "/list_characters";
const String gridCharacters = '/grid_characters';
const String character = '/character';
const String filter = '/filter';


final _router = GoRouter(
  initialLocation: listCharacters,
  //initialLocation: filter,
  routes: [
    GoRoute(
      path: listCharacters,
      builder: (context, state) => ListCharacters(),
    ),
    GoRoute(
      path: gridCharacters,
      builder: (context, state) => GridCharacters(),
    ),
    GoRoute(
      path: character,
      builder: (context, state) => Character(),
    ),
    GoRoute(
      path: filter,
      builder: (context, state) => Filter(),
    ),


  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme:
      ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(11, 30, 45, 1),
        primaryColorLight: Color.fromRGBO(21, 42, 58, 1),
        hintColor: Color.fromRGBO(91, 105, 117, 1),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(11, 30, 45, 1),
            error: Colors.red,
            onTertiary: Colors.black45),

        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     theme: ThemeData(
  //       scaffoldBackgroundColor: Color.fromRGBO(11, 30, 45, 1),
  //       colorScheme: ColorScheme.fromSeed(
  //       seedColor: Color.fromRGBO(11, 30, 45, 1),
  //       error: Colors.red,
  //       onTertiary: Colors.black45),
  //       useMaterial3: true,
  //     ),
  //     home: Character(),
  //
  //
  //   );






