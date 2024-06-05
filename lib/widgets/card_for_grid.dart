
import 'package:flutter/material.dart';
import 'package:untitled/models/creauture.dart';
import 'package:go_router/go_router.dart';

import '../main.dart';

class CardForGrid extends StatelessWidget {
  final creature myCreature;

  const CardForGrid({super.key, required this.myCreature, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {context.push('$character', extra: myCreature);

      },
      child: SizedBox(
        height: 200,
        child: Column(
          children: [
            Image(
                width: 100,
                image: AssetImage(myCreature.img),
                fit: BoxFit.cover),
            const SizedBox(height: 9),
            Text(myCreature.isLive,
                style: TextStyle(
                  color: (myCreature.isLive == 'живой')
                      ? const Color.fromRGBO(67, 208, 73, 1)
                      : Colors.red,
                  fontSize: 10,
                )),
            Text(
              myCreature.name,
              style: const TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 16,
              ),
            ),
            Text(
              '${myCreature.rise}, ${myCreature.sex}',
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
