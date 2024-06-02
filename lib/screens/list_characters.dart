import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/creauture.dart';
import 'package:untitled/data/creature_data.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/main.dart';

creature cr = creatures[0];

class ListCharacters extends StatefulWidget {
  ListCharacters({super.key});

  @override
  State<ListCharacters> createState() => _ListCharactersState();
}

class _ListCharactersState extends State<ListCharacters> {
  final int _persons_number = creatures.length;

  bool _isGrid = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Theme.of(context).primaryColorLight,
                    hintText: 'Найти персонажа',
                    hintStyle: const TextStyle(
                      color: Color.fromRGBO(91, 105, 117, 1),
                    ),
                    prefixIcon: Image(
                        image: _isGrid
                            ? const AssetImage('assets/icons/list.png')
                            : const AssetImage('assets/icons/find.png'),
                        width: 10),
                    suffixIcon: const Icon(Icons.filter_alt),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(width: 1)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Всего персонажей: ${_persons_number}',
                    style:
                        const TextStyle(color: Color.fromRGBO(91, 105, 117, 1)),
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          _isGrid = !_isGrid;
                        });
                      },
                      icon: const Icon(Icons.grid_view_sharp))
                ],
              ),
              const SizedBox(height: 20),

              Expanded(
                child: _buildList(),
              )

              // MyCardView(myCreature: creatures[0]),
              // MyCardView(myCreature: creatures[1]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildList() {
    if (_isGrid) {
      return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: creatures.length,
        itemBuilder: (context, index) => MyGridCard(
          myCreature: creatures[index],
          onTap: () {
            context.go('$listCharacters/$character');
          },
        ),
      );
    }
    return ListView.builder(
      itemCount: creatures.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: MyCardView(myCreature: creatures[index]),
          onTap: () {
            context.go('$listCharacters/$character');
          },
        );
      },
    );
  }
}

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

class MyGridCard extends StatelessWidget {
  final creature myCreature;

  const MyGridCard({super.key, required this.myCreature, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
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
