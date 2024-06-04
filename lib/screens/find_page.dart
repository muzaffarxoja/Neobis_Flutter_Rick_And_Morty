import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/main.dart';
import 'package:untitled/models/creauture.dart';
import 'package:untitled/data/creature_data.dart';

class FindPage extends StatefulWidget {
  const FindPage({super.key});

  @override
  State<FindPage> createState() => _FindPageState();
}

class _FindPageState extends State<FindPage> {
  List<creature> _foundList = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FindInput(),
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
            'assets/icons/find.png',
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
              onChanged: (value) => filterCharacter(value),
              decoration: InputDecoration.collapsed(
                hintText: 'Найти персонажа',
                hintStyle: TextStyle(
                  color: Theme.of(context).hintColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
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
            'assets/icons/filter1.png',
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
