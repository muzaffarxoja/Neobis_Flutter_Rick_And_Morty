


import 'package:flutter/material.dart';
import 'package:untitled/models/character.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/main.dart';

class CardForList extends StatelessWidget {
  final Character myCharacter;

  CardForList({super.key, required this.myCharacter});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {context.push('$character', extra: myCharacter);

      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
        child: Row(
          children: [
            Image(
                width: 74, image: AssetImage(myCharacter.image), fit: BoxFit.cover),
            const SizedBox(width: 18),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 9),
                Text(myCharacter.status,
                    style: TextStyle(
                      color: (myCharacter.status == 'live')
                          ? const Color.fromRGBO(67, 208, 73, 1)
                          : Colors.red,
                      fontSize: 10,
                    )),
                Text(
                  myCharacter.name,
                  style: const TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 16,
                  ),
                ),
                Text(
                  '$myCharacter.type}, ${myCharacter.gender}',
                  style: const TextStyle(
                    color: Color.fromRGBO(110, 121, 140, 1),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 9),
              ],
            )
          ],
        ),
      ),
    );
  }
}
