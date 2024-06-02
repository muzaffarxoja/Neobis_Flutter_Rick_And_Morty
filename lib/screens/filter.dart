import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/consts/consts.dart';
import 'package:go_router/go_router.dart';

bool checkedLive = false;
bool checkedDied = false;
bool checkedUnknown = false;
bool checkedMale = false;
bool checkedFemale = false;
bool checkedNoSex = false;



class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
                    'Филтьры',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'СОРТИРОВАТ',
                    style: TextStyle(
                        fontSize: 10, color: Theme.of(context).hintColor),
                  ),
                  SizedBox(
                    height: 29,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'По алфавиту',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              iconPath + 'filter1.png',
                              fit: BoxFit.cover,
                              width: 16,
                              height: 16,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              iconPath + 'filter2.png',
                              fit: BoxFit.cover,
                              width: 16,
                              height: 16,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 2, color: Theme.of(context).primaryColorLight),
                  SizedBox(height: 20),
                  Text(
                    'СТАТУС',
                    style: TextStyle(
                        fontSize: 10, color: Theme.of(context).hintColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: checkedLive,
                        onChanged: (newValue) {
                          setState(() {
                            checkedLive = newValue!;
                          });
                        },
                      ),
                      Text(
                        'Живой',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: checkedDied,
                        onChanged: (newValue) {
                          setState(() {
                            checkedDied = newValue!;
                          });
                        },
                      ),
                      Text(
                        'Мертвый',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: checkedUnknown,
                        onChanged: (newValue) {
                          setState(() {
                            checkedUnknown = newValue!;
                          });
                        },
                      ),
                      Text(
                        'Не известно',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                      height: 2, color: Theme.of(context).primaryColorLight),
                  SizedBox(height: 20),
                  Text(
                    'СТАТУС',
                    style: TextStyle(
                        fontSize: 10, color: Theme.of(context).hintColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: checkedMale,
                        onChanged: (newValue) {
                          setState(() {
                            checkedMale = newValue!;
                          });
                        },
                      ),
                      Text('Мужской',
                        style: TextStyle(
                            fontSize: 14, color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Checkbox(
                        value: checkedFemale,
                        onChanged: (newValue) {
                          setState(() {
                            checkedFemale = newValue!;
                          });
                        },
                      ),
                      Text('Женский',
                        style: TextStyle(
                            fontSize: 14, color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Checkbox(
                        value: checkedNoSex,
                        onChanged: (newValue) {
                          setState(() {
                            checkedNoSex = newValue!;
                          });
                        },
                      ),
                      Text('Безполый',
                        style: TextStyle(
                            fontSize: 14, color: Colors.white),)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
