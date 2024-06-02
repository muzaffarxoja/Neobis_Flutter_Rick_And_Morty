import 'package:flutter/material.dart';
import 'package:untitled/screens/character.dart';
import 'package:untitled/screens/list_persons.dart';
import 'package:untitled/screens/list_persons2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(11, 30, 45, 1),
        colorScheme: ColorScheme.fromSeed(
        seedColor: Color.fromRGBO(11, 30, 45, 1),
        error: Colors.red,
        onTertiary: Colors.black45),
        useMaterial3: true,
      ),
      home: character(),

    );
  }
}




