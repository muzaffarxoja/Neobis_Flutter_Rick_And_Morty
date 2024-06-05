
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/creature_data.dart';
import 'package:untitled/main.dart';
import 'package:untitled/widgets/card_for_list.dart';
import '../models/creauture.dart';



class MyListView extends StatelessWidget {

  final List<creature> listOfCreatures;

  const MyListView({super.key,required this.listOfCreatures});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfCreatures.length,
      itemBuilder: (context, index) {
        return CardForList(myCreature: listOfCreatures[index]);
      },
    );
  }
}

