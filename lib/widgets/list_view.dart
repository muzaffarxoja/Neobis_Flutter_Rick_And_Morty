
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/creature_data.dart';
import 'package:untitled/main.dart';
import '../models/creauture.dart';
import 'card_view.dart';


class MyListView extends StatelessWidget {

  final List<creature> foundList;

  const MyListView({super.key,required this.foundList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foundList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: MyCardView(myCreature: foundList[index]),
          onTap: () {
            context.go('$listCharacters/$character');
          },
        );
      },
    );
  }
}

