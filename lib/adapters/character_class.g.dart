// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_class.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterClassAdapter extends TypeAdapter<CharacterClass> {
  @override
  final int typeId = 1;

  @override
  CharacterClass read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterClass(
      fields[0] as ClassNames,
    )..classImagePath = fields[1] as String;
  }

  @override
  void write(BinaryWriter writer, CharacterClass obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.className)
      ..writeByte(1)
      ..write(obj.classImagePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterClassAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ClassNamesAdapter extends TypeAdapter<ClassNames> {
  @override
  final int typeId = 2;

  @override
  ClassNames read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return ClassNames.adele;
      case 1:
        return ClassNames.angelicBuster;
      case 2:
        return ClassNames.aran;
      case 3:
        return ClassNames.ark;
      case 4:
        return ClassNames.battleMage;
      case 5:
        return ClassNames.beastTamer;
      case 6:
        return ClassNames.bishop;
      case 7:
        return ClassNames.blaster;
      case 8:
        return ClassNames.blazeWizard;
      case 9:
        return ClassNames.bowMaster;
      case 10:
        return ClassNames.buccaneer;
      case 11:
        return ClassNames.cadena;
      case 12:
        return ClassNames.cannoneer;
      case 13:
        return ClassNames.corsair;
      case 14:
        return ClassNames.darkKnight;
      case 15:
        return ClassNames.dawnWarrior;
      case 16:
        return ClassNames.demonAvenger;
      case 17:
        return ClassNames.demonSlayer;
      case 18:
        return ClassNames.dualBlade;
      case 19:
        return ClassNames.evan;
      case 20:
        return ClassNames.hayato;
      case 21:
        return ClassNames.hero;
      case 22:
        return ClassNames.hoyoung;
      case 23:
        return ClassNames.illium;
      case 24:
        return ClassNames.jett;
      case 25:
        return ClassNames.kain;
      case 26:
        return ClassNames.kaiser;
      case 27:
        return ClassNames.kanna;
      case 28:
        return ClassNames.kinesis;
      case 29:
        return ClassNames.lara;
      case 30:
        return ClassNames.luminous;
      case 31:
        return ClassNames.firePoisonMage;
      case 32:
        return ClassNames.iceLightningMage;
      case 33:
        return ClassNames.marksman;
      case 34:
        return ClassNames.mechanic;
      case 35:
        return ClassNames.mercedes;
      case 36:
        return ClassNames.mihile;
      case 37:
        return ClassNames.nightLord;
      case 38:
        return ClassNames.nightWalker;
      case 39:
        return ClassNames.paladin;
      case 40:
        return ClassNames.pathfinder;
      case 41:
        return ClassNames.phantom;
      case 42:
        return ClassNames.shade;
      case 43:
        return ClassNames.shadower;
      case 44:
        return ClassNames.thunderBreaker;
      case 45:
        return ClassNames.wildHunter;
      case 46:
        return ClassNames.windArcher;
      case 47:
        return ClassNames.xenon;
      case 48:
        return ClassNames.zero;
      default:
        return ClassNames.adele;
    }
  }

  @override
  void write(BinaryWriter writer, ClassNames obj) {
    switch (obj) {
      case ClassNames.adele:
        writer.writeByte(0);
        break;
      case ClassNames.angelicBuster:
        writer.writeByte(1);
        break;
      case ClassNames.aran:
        writer.writeByte(2);
        break;
      case ClassNames.ark:
        writer.writeByte(3);
        break;
      case ClassNames.battleMage:
        writer.writeByte(4);
        break;
      case ClassNames.beastTamer:
        writer.writeByte(5);
        break;
      case ClassNames.bishop:
        writer.writeByte(6);
        break;
      case ClassNames.blaster:
        writer.writeByte(7);
        break;
      case ClassNames.blazeWizard:
        writer.writeByte(8);
        break;
      case ClassNames.bowMaster:
        writer.writeByte(9);
        break;
      case ClassNames.buccaneer:
        writer.writeByte(10);
        break;
      case ClassNames.cadena:
        writer.writeByte(11);
        break;
      case ClassNames.cannoneer:
        writer.writeByte(12);
        break;
      case ClassNames.corsair:
        writer.writeByte(13);
        break;
      case ClassNames.darkKnight:
        writer.writeByte(14);
        break;
      case ClassNames.dawnWarrior:
        writer.writeByte(15);
        break;
      case ClassNames.demonAvenger:
        writer.writeByte(16);
        break;
      case ClassNames.demonSlayer:
        writer.writeByte(17);
        break;
      case ClassNames.dualBlade:
        writer.writeByte(18);
        break;
      case ClassNames.evan:
        writer.writeByte(19);
        break;
      case ClassNames.hayato:
        writer.writeByte(20);
        break;
      case ClassNames.hero:
        writer.writeByte(21);
        break;
      case ClassNames.hoyoung:
        writer.writeByte(22);
        break;
      case ClassNames.illium:
        writer.writeByte(23);
        break;
      case ClassNames.jett:
        writer.writeByte(24);
        break;
      case ClassNames.kain:
        writer.writeByte(25);
        break;
      case ClassNames.kaiser:
        writer.writeByte(26);
        break;
      case ClassNames.kanna:
        writer.writeByte(27);
        break;
      case ClassNames.kinesis:
        writer.writeByte(28);
        break;
      case ClassNames.lara:
        writer.writeByte(29);
        break;
      case ClassNames.luminous:
        writer.writeByte(30);
        break;
      case ClassNames.firePoisonMage:
        writer.writeByte(31);
        break;
      case ClassNames.iceLightningMage:
        writer.writeByte(32);
        break;
      case ClassNames.marksman:
        writer.writeByte(33);
        break;
      case ClassNames.mechanic:
        writer.writeByte(34);
        break;
      case ClassNames.mercedes:
        writer.writeByte(35);
        break;
      case ClassNames.mihile:
        writer.writeByte(36);
        break;
      case ClassNames.nightLord:
        writer.writeByte(37);
        break;
      case ClassNames.nightWalker:
        writer.writeByte(38);
        break;
      case ClassNames.paladin:
        writer.writeByte(39);
        break;
      case ClassNames.pathfinder:
        writer.writeByte(40);
        break;
      case ClassNames.phantom:
        writer.writeByte(41);
        break;
      case ClassNames.shade:
        writer.writeByte(42);
        break;
      case ClassNames.shadower:
        writer.writeByte(43);
        break;
      case ClassNames.thunderBreaker:
        writer.writeByte(44);
        break;
      case ClassNames.wildHunter:
        writer.writeByte(45);
        break;
      case ClassNames.windArcher:
        writer.writeByte(46);
        break;
      case ClassNames.xenon:
        writer.writeByte(47);
        break;
      case ClassNames.zero:
        writer.writeByte(48);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClassNamesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
