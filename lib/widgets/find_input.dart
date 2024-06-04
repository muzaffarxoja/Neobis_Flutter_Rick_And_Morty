import 'package:flutter/material.dart';

class CustomFindInput extends StatefulWidget {
  const CustomFindInput({super.key});

  @override
  State<CustomFindInput> createState() => _State();
}

class _State extends State<CustomFindInput> {
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
          TextField(
            //controller: _controller,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
            onChanged: (value) {},
            //(value) => filterCharacter(value),
            decoration: InputDecoration.collapsed(
              hintText: 'Найти персонажа',
              hintStyle: TextStyle(
                color: Theme.of(context).hintColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
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
    ;
  }
}
