import 'package:flutter/material.dart';
import 'package:untitled/consts/consts.dart';
import 'package:untitled/data/creature_data.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/main.dart';


class Character extends StatelessWidget {
  const Character({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 218,
                width: double.infinity,
                child: Image.asset(
                  imgPath + 'rectangle1.png',
                  color: Colors.white.withOpacity(0.65),
                  colorBlendMode: BlendMode.dstIn,
                ),
              ),
              Positioned(
                left: 20,
                top: 218 / 5,
                child: IconButton(
                  onPressed: () {
                    context.pop();
                    },
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  iconSize: 25,
                ),
              ),
              Positioned(
                left: 110,
                top: 90,
                child: Image.asset(imgPath + 'image1.png'),
              ),
            ],
            clipBehavior: Clip.none,
          ),
          SizedBox(
            height: 110,
          ),
          Center(
            child: Text(
              creatures[0].name,
              style: TextStyle(fontSize: 34, color: Colors.white),
            ),
          ),
          Center(
            child: Text(
              creatures[0].isLive,
              style: TextStyle(
                fontSize: 14,
                color: (creatures[0].isLive == 'живой')
                    ? Color.fromRGBO(67, 208, 73, 1)
                    : Colors.red,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Пол',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(110, 121, 140, 1),
                    ),
                  ),
                  Text(
                    creatures[0].sex,
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                width: 120,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Раса',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromRGBO(110, 121, 140, 1),
                    ),
                  ),
                  Text(
                    creatures[0].rise,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Место рождения',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(110, 121, 140, 1),
            ),
          ),
          Text(
            creatures[0].born,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Местоположения',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromRGBO(110, 121, 140, 1),
            ),
          ),
          Text(
            creatures[0].location,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 3,
            width: double.infinity,
            color: Color.fromRGBO(21, 42, 58, 1),
          ),
          Text(
            'Эпизоды',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                 itemCount: creatures[0].episodes.length,
                itemBuilder: (context,index) {
                   Column(
                     children: [
                       SizedBox(
                         height: 20,
                       ),
                       Text(
                         creatures[0].episodes[index][0],
                         style: TextStyle(
                           fontSize: 12,
                           color: Color.fromRGBO(110, 121, 140, 1),
                         ),
                       ),
                       Text(
                         creatures[0].episodes[index][1],
                         style: TextStyle(fontSize: 14, color: Colors.white),
                       ),
                     ],
                   );
                },),
          ),
        ],
      ),
    );
  }
}
