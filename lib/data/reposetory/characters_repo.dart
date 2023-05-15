import 'package:flutter_breaking/data/web_services/characters_api.dart';

import '../models/characters.dart';

class CharactersRepo {
  //create instance from CharactersApi class--> as it include the data.
  final CharactersApi charactersApi;

  CharactersRepo(this.charactersApi);

  Future<List<Character>> getAllCharacters() async {
    final characters = await CharactersApi().getAllCharacters();
    return characters
        .map((character) =>
            Character.fromJson(character as Map<String, dynamic>))
        .toList();
  }
}
