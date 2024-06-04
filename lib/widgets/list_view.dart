
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/creature_data.dart';
import 'package:untitled/main.dart';
import 'card_view.dart';


class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: creatures.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: MyCardView(myCreature: creatures[index]),
          onTap: () {
            context.go('$listCharacters/$character');
          },
        );
      },
    );
  }
}

