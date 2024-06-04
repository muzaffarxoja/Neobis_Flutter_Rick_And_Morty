

import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import '../data/creature_data.dart';
import '../models/creauture.dart';


class MyCardView extends StatelessWidget {
  final creature myCreature;

  MyCardView({super.key, required this.myCreature});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
      child: Row(
        children: [
          Image(
              width: 74, image: AssetImage(myCreature.img), fit: BoxFit.cover),
          const SizedBox(width: 18),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
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
                '$myCreature.type}, ${myCreature.sex}',
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
    );
  }
}
