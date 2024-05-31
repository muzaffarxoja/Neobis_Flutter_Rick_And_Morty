import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/creauture.dart';

class ListPersons extends StatelessWidget {
  const ListPersons({super.key});

  final int _persons_number = 200;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(

                  hintText: 'Найти персонажа',
                  prefixIcon: Icon(Icons.find_in_page_outlined),
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
                Text(
                    'Всего персонажей ${_persons_number}'
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.grid_view_sharp))
              ],
            ),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 343,
      child: Row(
        children: [
          Image.asset('name'),
          Column(
            children: [

            ],
          )


        ],
      ),
    );
  }
}

