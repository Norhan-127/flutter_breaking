import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_breaking/business_logic/characters_cubit.dart';
import 'package:flutter_breaking/constants/strings.dart';
import 'package:flutter_breaking/data/reposetory/characters_repo.dart';
import 'package:flutter_breaking/peresentation/screens/characters_details_screen.dart';
import 'package:flutter_breaking/peresentation/screens/characters_screen.dart';

import 'data/web_services/characters_api.dart';

class AppRouter {
  late CharactersRepo charactersRepo;
  late CharactersCubit charactersCubit;

  AppRouter() {
    charactersRepo = CharactersRepo(CharactersApi());
    charactersCubit = CharactersCubit(charactersRepo);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case (charactersScreen):
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => CharactersCubit(charactersRepo),
            child: const CharactersScreen(),
          ),
        );
      case (charactersDetails):
        return MaterialPageRoute(builder: (_) => CharactersDetails());
    }
  }
}
