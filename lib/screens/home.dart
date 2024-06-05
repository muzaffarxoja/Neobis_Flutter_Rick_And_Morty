import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        children: [
          Align(
            alignment: Alignment.center,
              child: TextButton(onPressed: () => context.go('/$listCharacters'), child: Text('sdfsdfs')))
        ],
      ),
    );
  }
}
