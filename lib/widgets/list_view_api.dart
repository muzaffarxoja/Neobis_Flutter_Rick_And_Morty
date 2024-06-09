
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/main.dart';
//import 'package:untitled/widgets/card_for_list.dart';
import 'package:untitled/widgets/card_for_list_api.dart';
import 'package:untitled/models/character.dart';



class MyListView extends StatelessWidget {

  final List<Character> listOfCharacters;

  const MyListView({super.key,required this.listOfCharacters});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listOfCharacters.length,
      itemBuilder: (context, index) {
        return CardForList(myCharacter: listOfCharacters[index]);
      },
    );
  }
}

