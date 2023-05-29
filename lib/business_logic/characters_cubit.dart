import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../data/models/characters.dart';
import '../data/reposetory/characters_repo.dart';

part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepo charactersRepo;
   List<Character> characters=[];

  CharactersCubit(this.charactersRepo) : super(CharactersInitial());

  List<Character> fetchData() {
    charactersRepo.getAllCharacters().then((characters) {
      //take from repo(data layer) and send to presentation layer
      emit(CharactersLoaded(characters!));
      this.characters = characters;
    });
    return characters;
  }
}
