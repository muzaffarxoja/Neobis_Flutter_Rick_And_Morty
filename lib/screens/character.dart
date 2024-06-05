import 'package:flutter/material.dart';
import 'package:untitled/consts/consts.dart';
import 'package:untitled/data/creature_data.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/main.dart';
import 'package:untitled/models/creauture.dart';
import 'package:untitled/screens/list_characters.dart' as list;


class MyCharacter extends StatelessWidget {
  final creature singleCreature;


  const MyCharacter({super.key, required this.singleCreature});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      height: 218,
                      width: double.infinity,
                      child: Image.asset(
                        '${imgPath}rectangle1.png',
                        color: Colors.white.withOpacity(0.65),
                        colorBlendMode: BlendMode.dstIn,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 218 / 5,
                    child: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.white,
                      iconSize: 25,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF0B1E2D),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(singleCreature.img),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(

                singleCreature.name,
                style: const TextStyle(fontSize: 34, color: Colors.white),
              ),
            ),
            Center(
              child: Text(
               singleCreature.isLive,
                style: TextStyle(
                  fontSize: 14,
                  color: (singleCreature.isLive == 'живой')
                      ? const Color.fromRGBO(67, 208, 73, 1)
                      : Colors.red,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Пол',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(110, 121, 140, 1),
                      ),
                    ),
                    Text(
                      singleCreature.sex,
                      style: const TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 120,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Раса',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO(110, 121, 140, 1),
                      ),
                    ),
                    Text(
                      singleCreature.rise,
                      style: const TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Место рождения',
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(110, 121, 140, 1),
              ),
            ),
            Text(
              singleCreature.born,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Местоположения',
              style: TextStyle(
                fontSize: 12,
                color: Color.fromRGBO(110, 121, 140, 1),
              ),
            ),
            Text(
              singleCreature.location,
              style: const TextStyle(fontSize: 14, color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 3,
              width: double.infinity,
              color: const Color.fromRGBO(21, 42, 58, 1),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: const Text(
                'Эпизоды',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),

            ListView.builder(
              itemCount: singleCreature.episodes.length,
              shrinkWrap: true,
              //physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      singleCreature.episodes[index][0],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color.fromRGBO( 34, 162, 189, 0.87),
                      ),
                    ),
                    Text(
                      singleCreature.episodes[index][1],
                      style: const TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    Text(
                      singleCreature.episodes[index][2],
                      style: const TextStyle(fontSize: 14,
                        color: Color.fromRGBO( 110, 121, 140, 1),),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
