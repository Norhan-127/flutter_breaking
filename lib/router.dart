import 'package:flutter/material.dart';
import 'package:flutter_breaking/constants/strings.dart';
import 'package:flutter_breaking/peresentation/screens/characters_details_screen.dart';
import 'package:flutter_breaking/peresentation/screens/characters_screen.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case (charactersScreen):
        return MaterialPageRoute(builder: (_) => CharactersScreen());
      case (charactersDetails):
        return MaterialPageRoute(builder: (_) => CharactersDetails());
    }
  }
}
