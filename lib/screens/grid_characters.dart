import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/creauture.dart';
import 'package:untitled/data/creature_data.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/main.dart';

creature cr = creatures[0];

class GridCharacters extends StatelessWidget {
  GridCharacters({super.key});

  final int _persons_number = creatures.length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Theme.of(context).primaryColor,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextField(
        
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).primaryColorLight,
                    hintText: 'Найти персонажа',
                    hintStyle: TextStyle(color: Color.fromRGBO(91, 105, 117, 1),),
                    prefixIcon:  Image(image: AssetImage('assets/icons/find.png'), width: 10),
                    suffixIcon: Icon(Icons.filter_alt),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide(width: 1)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Всего персонажей: ${_persons_number}',style: TextStyle(color: Color.fromRGBO(91, 105, 117, 1),),),
                  IconButton(
        
                      onPressed: () => context.go(listCharacters), icon: Image(
                       image: AssetImage('assets/icons/list.png'), fit: BoxFit.cover),)
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
        
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemCount: creatures.length,
                    itemBuilder: (context, index) =>
                        Expanded(child: MyCardView(myCreature: creatures[index]))),
              )
        
              // MyCardView(myCreature: creatures[0]),
              // MyCardView(myCreature: creatures[1]),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCardView extends StatelessWidget {
  final creature myCreature;

  MyCardView({super.key, required this.myCreature});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
          children: [
            Image(
                width: 100, image: AssetImage(myCreature.img), fit: BoxFit.cover),
            SizedBox(height: 9),
            Text(myCreature.isLive,
                style: TextStyle(
                  color:   (myCreature.isLive == 'живой') ? Color.fromRGBO(67, 208, 73, 1) : Colors.red,
                  fontSize: 10,
                )),
            Text(
              myCreature.name,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 16,
              ),
            ),
            Text(
              '${myCreature.rise}, ${myCreature.sex}',
              style: TextStyle(
                color: Color.fromRGBO(110, 121, 140, 1),
                fontSize: 12,
              ),
            ),
            SizedBox(height: 9)
          ],
        ),
    );
  }
}