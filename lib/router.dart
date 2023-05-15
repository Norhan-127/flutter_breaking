import 'package:flutter/material.dart';
import 'package:flutter_breaking/peresentation/screens/characters_screen.dart';
class AppRouter{
  Route? onGenerateRoute(RouteSettings settings){
    switch(settings.name){
      case('/'):
        return MaterialPageRoute(builder:(_)=>CharactersScreen());
    }
    return null;
  }
}