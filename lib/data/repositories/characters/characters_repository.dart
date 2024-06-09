import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/character.dart';

class CharactersRepository {

  final Dio dio = Dio();

  Future<List<Character>> getCharactersList() async {
    try {
      final response =
          await dio.get("https://rickandmortyapi.com/api/character");


      List<dynamic> data =
          response.data['results']; // Dio already decodes the JSON for you
      List<Character> characterList =
          data.map((json) => Character.fromJson(json)).toList();
      return characterList;
    } catch (e) {
      print('Request failed with error: $e');
      return [];
    }

    debugPrint('kjhkjhjk');
  }
}
