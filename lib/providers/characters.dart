import 'package:collection/collection.dart';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../adapters/character.dart';
import '../adapters/character_class.dart';

class CharactersController with ChangeNotifier {
  List<Character> _characters = [];
  // UnmodifiableListView<Character> get characters =>
  //     UnmodifiableListView(_characters);

  List<Character> get characters => _characters;

  final String charactersBox = 'charactersBox';

  CharactersController() {
    getCharacters();
  }

  Future<void> isUnique(Character character) async {
    Box<Character> box = await Hive.openBox<Character>(charactersBox);

    if (box.values.firstWhereOrNull(
            (existingCharacter) => existingCharacter.name != character.name) !=
        null) {
      return false;
    } else {
      return true;
    }
  }

  // Create new character
  Future<void> createCharacter(Character createdCharacter) async {
    Box<Character> box = await Hive.openBox<Character>(charactersBox);
    if (box.values.firstWhereOrNull((existingCharacter) =>
            existingCharacter.name != createdCharacter.name) !=
        null) {
      // Return something here to say that the character already exists
    }
    await box.add(createdCharacter);

    _characters.add(createdCharacter);

    _characters = box.values.toList();

    notifyListeners();
  }

  // Edit character name
  Future<void> editCharacter(Character character, String newName) async {
    Box<Character> box = await Hive.openBox<Character>(charactersBox);

    Character editedCharacter =
        Character(newName, CharacterClass(character.characterClass.className));

    await box.put(character.key, editedCharacter);

    final index =
        _characters.indexWhere((element) => element.name == character.name);

    _characters[index] = character;

    _characters = box.values.toList();

    notifyListeners();
  }

  // Get characters
  Future<void> getCharacters() async {
    Box<Character> box = await Hive.openBox<Character>(charactersBox);

    _characters = box.values.toList();

    notifyListeners();
  }

  // Delete a character
  Future<void> deleteCharacter(Character character) async {
    Box<Character> box = await Hive.openBox<Character>(charactersBox);

    await box.delete(character.key);

    _characters.remove(character);
    _characters = box.values.toList();

    notifyListeners();
  }

  Future<int> getCharacterIndexFromName(String characterName) async {
    Box<Character> box = await Hive.openBox<Character>(charactersBox);
    Map boxMap = box.toMap();

    return boxMap.keys.singleWhere((key) => boxMap[key] == characterName);
  }
}
