import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/character.dart';

class CharactersRepository {
  Future<List<Character>> getCharactersList() async {
    try {
      final response = await Dio().get(
          "https://rickandmortyapi.com/api/character");

      List<dynamic> data = response
          .data; // Dio already decodes the JSON for you
      List<Character> characterList = data.map((json) =>
          Character.fromJson(json)).toList();
      return characterList;
    }
    catch (e) {
      print('Request failed with error: $e');
      return [];
    }

    debugPrint('kjhkjhjk');


  }
}