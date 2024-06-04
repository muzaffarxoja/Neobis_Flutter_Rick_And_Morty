

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FilterInput extends StatefulWidget {
  const FilterInput({super.key});

  @override
  State<FilterInput> createState() => _FilterInputState();
}

class _FilterInputState extends State<FilterInput> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      width: double.infinity,
      color: Theme.of(context).primaryColorLight,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {context.pop(); },
              icon: Icon(Icons.arrow_back_outlined),
              color: Colors.white,
            ),
          ),
          Text(
            'Фильтры',
            style: TextStyle(fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}


