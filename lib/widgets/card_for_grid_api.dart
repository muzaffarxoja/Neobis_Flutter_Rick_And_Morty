import 'package:flutter/material.dart';
import 'package:untitled/models/character.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/main.dart';

class CardForGrid extends StatelessWidget {
  final Character myCharacter;

  const CardForGrid({super.key, required this.myCharacter, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {context.push('$character', extra: myCharacter);

      },
      child: SizedBox(
        height: 200,
        child: Column(
          children: [
            Image(
                width: 100,
                image: AssetImage(myCharacter.image),
                fit: BoxFit.cover),
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
              '${myCharacter.species}, ${myCharacter.gender}',
              style: const TextStyle(
                color: Color.fromRGBO(110, 121, 140, 1),
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 9)
          ],
        ),
      ),
    );
  }
}
