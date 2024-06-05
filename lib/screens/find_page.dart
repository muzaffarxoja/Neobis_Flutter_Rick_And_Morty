import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/main.dart';
import 'package:untitled/models/creauture.dart';
import 'package:untitled/data/creature_data.dart';
import 'package:untitled/widgets/list_view.dart';

class FindPage extends StatefulWidget {
  const FindPage({super.key});

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  List<creature> _foundList = [];

  @override
  void initState() {
        super.initState();
        _foundList=creatures;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: FindInput()),
    );
  }
}

class FindInput extends StatefulWidget {
  const FindInput({super.key});

  @override
  State<FindInput> createState() => _FindInputState();
}

class _FindInputState extends State<FindInput> {
  List<creature> _foundList = [];
  final fieldText = TextEditingController();

  bool _isEmpty = true;

  void clearText() {

      fieldText.clear();
      filterCharacter('');


  }

  void filterCharacter(value) {
    setState(() {
      _foundList = creatures
          .where((element) =>
              element.name.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 48,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(100),
              color: Theme.of(context).primaryColorLight,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 12,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icons/arrow.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: fieldText,

                    //controller: _controller,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                    onChanged: (value) => filterCharacter(value),
                    decoration: InputDecoration.collapsed(
                      hintText: 'Поиск',
                      hintStyle: TextStyle(
                        color: Theme.of(context).hintColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: clearText,
                  child: Image.asset(
                    'assets/icons/delete.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
              child: (_foundList.isNotEmpty)
                  ? MyListView(listOfCreatures: _foundList)
                  : Image.asset('assets/images/not_found.png',
                      width: 134, fit: BoxFit.cover))
        ],
      ),
    );
  }
}
