import 'package:hive/hive.dart';
import 'character_class.dart';

part 'character.g.dart';

@HiveType(typeId: 0)
class Character extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  CharacterClass characterClass;

  // Constructor
  Character(this.name, this.characterClass);
}
