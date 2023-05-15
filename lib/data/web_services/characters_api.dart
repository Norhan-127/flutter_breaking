import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_breaking/constants/strings.dart';
import 'package:flutter_breaking/data/models/characters.dart';

class CharactersApi {
  late Dio dio;

  CharactersApi() {
    BaseOptions baseOptions = BaseOptions(
        baseUrl: baseUrl,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(minutes: 1),
        receiveTimeout: const Duration(minutes: 1));
    dio = Dio(baseOptions);
  }

  Future<List<Character>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      debugPrint(response.data.toString());
      return response.data;
    } catch (e) {
      debugPrint(e.toString());
      return [];
    }
  }
}
