import 'package:flutter_breaking/data/web_services/characters_api.dart';

import '../models/characters.dart';

class CharactersRepo {
  //create instance from CharactersApi class--> as it include the data.
  final CharactersApi charactersApi;

  CharactersRepo(this.charactersApi);

  Future<List<Character>> getAllCharacters() async {
    final data = await charactersApi.getAllCharacters();
    //check if the returned data is not null
    if (data != null) {
      // Assuming the data is a Map with a key containing the List<dynamic>
      // For example: { "results": [ ... ] }
      //search for the first key in the map that contain a List-->data is a Map<k,v>, then store it in keyWithList variable
      //returns the first element that satisfies the function condition
      final keyWithList = data.keys.firstWhere(
            (key) => data[key] is List,
      );
      if (keyWithList != null) {
        List<dynamic> characterList = data[keyWithList];
        return characterList.map((characterJson) => Character.fromJson(characterJson)).toList();
      } else {
        throw Exception('No List<dynamic> found in the API response');
      }
    } else {
      throw Exception('Failed to fetch data from API');
    }
  }

}
