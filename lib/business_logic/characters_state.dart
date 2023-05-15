part of 'characters_cubit.dart';

@immutable
abstract class CharactersState {} //any class (state class) must inherit it.

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Character> characters;

  CharactersLoaded(this.characters);
}
