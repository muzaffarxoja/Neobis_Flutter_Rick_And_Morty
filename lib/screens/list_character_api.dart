import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/data/repositories/characters/characters_repository.dart';
import 'package:untitled/models/character.dart';

import 'package:go_router/go_router.dart';
import 'package:untitled/main.dart';
import 'package:untitled/widgets/card_for_grid_api.dart';
import 'package:untitled/widgets/card_for_list_api.dart';




class ListCharacters extends StatefulWidget {
  ListCharacters({super.key});

  @override
  State<ListCharacters> createState() => _ListCharactersState();
}

class _ListCharactersState extends State<ListCharacters> {

  List<Character> charList = [];
  int _personNumber = 0;

  bool _isGrid = false;

  //static creature singleCreature=creatures[0];

  @override
  void initState() {
    super.initState();
    _loadCharacters();
  }

  Future<void> _loadCharacters() async {
    charList = await CharactersRepository().getCharactersList();
    setState(() {
      _personNumber = charList.length;
    });
  }

  void showCharacter(index) {
    setState(() {
     // singleCreature=creatures[index];
      context.go('$listCharacters/$character');
    });




  }

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
                child: GestureDetector(
                  //onTap: () => context.go(findPage),
                  child: TextField(
                    onTap: () => context.push(findPage),
                    decoration: InputDecoration(
                      fillColor: Theme.of(context).primaryColorLight,
                      hintText: 'Найти персонажа',
                      hintStyle: const TextStyle(
                        color: Color.fromRGBO(91, 105, 117, 1),
                      ),
                      prefixIcon: Image(
                        image: const AssetImage('assets/icons/find.png'),
                      ),
                      suffixIcon: Icon(Icons.filter_alt),
                      prefix: GestureDetector(
                        onTap: () {},
                      ),
                      suffix: GestureDetector(
                        onTap: () => context.go(filter),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(width: 1)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Всего персонажей: ${_personNumber}',
                    style:
                        const TextStyle(color: Color.fromRGBO(91, 105, 117, 1)),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isGrid = !_isGrid;
                      });
                    },
                    icon: Image(
                      fit: BoxFit.cover,
                      image: _isGrid
                          ? const AssetImage('assets/icons/list.png')
                          : const AssetImage('assets/icons/Grid.png'),
                    ),
                  ),
                  //const Icon(Icons.grid_view_sharp))
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
        itemCount: charList.length,
        itemBuilder: (context, index) => CardForGrid(
          myCharacter: charList[index],

        ),
      );
    }
    return ListView.builder(
      itemCount: charList.length,
      itemBuilder: (context, index) {
        return CardForList(myCharacter: charList[index]);
      },
    );
  }
}

class FindInput extends StatefulWidget {
  const FindInput({super.key});

  @override
  State<FindInput> createState() => _FindInputState();
}

class _FindInputState extends State<FindInput> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Theme.of(context).primaryColorLight,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/icons/search.png',
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              //controller: _controller,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              //onChanged: (value) => textFieldName = value,
              decoration: InputDecoration.collapsed(
                hintText: 'Найти персонажа',
                hintStyle: TextStyle(
                  color: Theme.of(context).hintColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            width: 1,
            color: Colors.white.withOpacity(0.1),
          ),
          const SizedBox(width: 10),
          Image.asset(
            'assets/icons/filter.png',
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}