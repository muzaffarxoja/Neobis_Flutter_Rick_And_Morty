import 'package:flutter/material.dart';
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
        scaffoldBackgroundColor: Colors.blue,
        colorScheme: ColorScheme.fromSeed(
        seedColor: Color.fromARGB(1, 9, 54,92 ),
        error: Colors.red,
        onTertiary: Colors.black45),
        useMaterial3: true,
      ),
      home: ListPersons2(),
    );
  }
}




