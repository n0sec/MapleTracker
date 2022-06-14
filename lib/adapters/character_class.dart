import 'package:hive/hive.dart';

part 'character_class.g.dart';

@HiveType(typeId: 1)
class CharacterClass {
  @HiveField(0)
  ClassNames className;

  @HiveField(1)
  String classImagePath;

  CharacterClass(this.className) : classImagePath = classMap[className]!;
}

@HiveType(typeId: 2)
enum ClassNames {
  @HiveField(0)
  adele,

  @HiveField(1)
  angelicBuster,

  @HiveField(2)
  aran,

  @HiveField(3)
  ark,

  @HiveField(4)
  battleMage,

  @HiveField(5)
  beastTamer,

  @HiveField(6)
  bishop,

  @HiveField(7)
  blaster,

  @HiveField(8)
  blazeWizard,

  @HiveField(9)
  bowMaster,

  @HiveField(10)
  buccaneer,

  @HiveField(11)
  cadena,

  @HiveField(12)
  cannoneer,

  @HiveField(13)
  corsair,

  @HiveField(14)
  darkKnight,

  @HiveField(15)
  dawnWarrior,

  @HiveField(16)
  demonAvenger,

  @HiveField(17)
  demonSlayer,

  @HiveField(18)
  dualBlade,

  @HiveField(19)
  evan,

  @HiveField(20)
  hayato,

  @HiveField(21)
  hero,

  @HiveField(22)
  hoyoung,

  @HiveField(23)
  illium,

  @HiveField(24)
  jett,

  @HiveField(25)
  kain,

  @HiveField(26)
  kaiser,

  @HiveField(27)
  kanna,

  @HiveField(28)
  kinesis,

  @HiveField(29)
  lara,

  @HiveField(30)
  luminous,

  @HiveField(31)
  firePoisonMage,

  @HiveField(32)
  iceLightningMage,

  @HiveField(33)
  marksman,

  @HiveField(34)
  mechanic,

  @HiveField(35)
  mercedes,

  @HiveField(36)
  mihile,

  @HiveField(37)
  nightLord,

  @HiveField(38)
  nightWalker,

  @HiveField(39)
  paladin,

  @HiveField(40)
  pathfinder,

  @HiveField(41)
  phantom,

  @HiveField(42)
  shade,

  @HiveField(43)
  shadower,

  @HiveField(44)
  thunderBreaker,

  @HiveField(45)
  wildHunter,

  @HiveField(46)
  windArcher,

  @HiveField(47)
  xenon,

  @HiveField(48)
  zero
}

extension ClassLabel on ClassNames {
  String get label => _labels[this]!;

  static const _labels = <ClassNames, String>{
    ClassNames.adele: 'Adele',
    ClassNames.angelicBuster: 'Angelic Buster',
    ClassNames.aran: 'Aran',
    ClassNames.ark: 'Ark',
    ClassNames.battleMage: 'Battle Mage',
    ClassNames.beastTamer: 'Beast Tamer',
    ClassNames.bishop: 'Bishop',
    ClassNames.blaster: 'Blaster',
    ClassNames.blazeWizard: 'Blaze Wizard',
    ClassNames.bowMaster: 'Bow Master',
    ClassNames.buccaneer: 'Buccaneer',
    ClassNames.cadena: 'Cadena',
    ClassNames.cannoneer: 'Cannoneer',
    ClassNames.corsair: 'Corsair',
    ClassNames.darkKnight: 'Dark Knight',
    ClassNames.dawnWarrior: 'Dawn Warrior',
    ClassNames.demonAvenger: 'Demon Avenger',
    ClassNames.demonSlayer: 'Demon Slayer',
    ClassNames.dualBlade: 'Dual Blade',
    ClassNames.evan: 'Evan',
    ClassNames.firePoisonMage: 'Fire/Poison Mage',
    ClassNames.hayato: 'Hayato',
    ClassNames.hero: 'Hero',
    ClassNames.hoyoung: 'Hoyoung',
    ClassNames.iceLightningMage: 'Ice/Lightning Mage',
    ClassNames.illium: 'Illium',
    ClassNames.jett: 'Jett',
    ClassNames.kain: 'Kain',
    ClassNames.kaiser: 'Kaiser',
    ClassNames.kanna: 'Kanna',
    ClassNames.kinesis: 'Kinesis',
    ClassNames.lara: 'Lara',
    ClassNames.luminous: 'Luminous',
    ClassNames.marksman: 'Marksman',
    ClassNames.mechanic: 'Mechanic',
    ClassNames.mercedes: 'Mercedes',
    ClassNames.mihile: 'Mihile',
    ClassNames.nightLord: 'Night Lord',
    ClassNames.nightWalker: 'Night Walker',
    ClassNames.paladin: 'Paladin',
    ClassNames.pathfinder: 'Pathfinder',
    ClassNames.phantom: 'Phantom',
    ClassNames.shade: 'Shade',
    ClassNames.shadower: 'Shadower',
    ClassNames.thunderBreaker: 'Thunder Breaker',
    ClassNames.wildHunter: 'Wild Hunter',
    ClassNames.windArcher: 'Wind Archer',
    ClassNames.xenon: 'Xenon',
    ClassNames.zero: 'Zero'
  };
}

Map<ClassNames, String> classMap = {
  ClassNames.adele: 'assets/images/classes/adele.webp',
  ClassNames.angelicBuster: 'assets/images/classes/angelic_buster.webp',
  ClassNames.aran: 'assets/images/classes/aran.webp',
  ClassNames.ark: 'assets/images/classes/ark.webp',
  ClassNames.battleMage: 'assets/images/classes/battle_mage.webp',
  ClassNames.beastTamer: 'assets/images/classes/beast_tamer.webp',
  ClassNames.bishop: 'assets/images/classes/bishop.webp',
  ClassNames.blaster: 'assets/images/classes/blaster.webp',
  ClassNames.blazeWizard: 'assets/images/classes/blaze_wizard.webp',
  ClassNames.bowMaster: 'assets/images/classes/bowmaster.webp',
  ClassNames.buccaneer: 'assets/images/classes/buccaneer.webp',
  ClassNames.cadena: 'assets/images/classes/cadena.webp',
  ClassNames.cannoneer: 'assets/images/classes/cannoneer.webp',
  ClassNames.corsair: 'assets/images/classes/corsair.webp',
  ClassNames.darkKnight: 'assets/images/classes/dark_knight.webp',
  ClassNames.dawnWarrior: 'assets/images/classes/dawn_warrior.webp',
  ClassNames.demonAvenger: 'assets/images/classes/demon_avenger.webp',
  ClassNames.demonSlayer: 'assets/images/classes/demon_slayer.webp',
  ClassNames.dualBlade: 'assets/images/classes/dual_blade.webp',
  ClassNames.evan: 'assets/images/classes/evan.webp',
  ClassNames.firePoisonMage: 'assets/images/classes/fp_mage.webp',
  ClassNames.hayato: 'assets/images/classes/hayato.webp',
  ClassNames.hero: 'assets/images/classes/hero.webp',
  ClassNames.hoyoung: 'assets/images/classes/hoyoung.webp',
  ClassNames.iceLightningMage: 'assets/images/classes/il_mage.webp',
  ClassNames.illium: 'assets/images/classes/illium.webp',
  ClassNames.jett: 'assets/images/classes/jett.webp',
  ClassNames.kain: 'assets/images/classes/kain.webp',
  ClassNames.kaiser: 'assets/images/classes/kaiser.webp',
  ClassNames.kanna: 'assets/images/classes/kanna.webp',
  ClassNames.kinesis: 'assets/images/classes/kinesis.webp',
  ClassNames.lara: 'assets/images/classes/lara.webp',
  ClassNames.luminous: 'assets/images/classes/luminous.webp',
  ClassNames.marksman: 'assets/images/classes/marksman.webp',
  ClassNames.mechanic: 'assets/images/classes/mechanic.webp',
  ClassNames.mercedes: 'assets/images/classes/mercedes.webp',
  ClassNames.mihile: 'assets/images/classes/mihile.webp',
  ClassNames.nightLord: 'assets/images/classes/night_lord.webp',
  ClassNames.nightWalker: 'assets/images/classes/night_walker.webp',
  ClassNames.paladin: 'assets/images/classes/paladin.webp',
  ClassNames.pathfinder: 'assets/images/classes/pathfinder.webp',
  ClassNames.phantom: 'assets/images/classes/phantom.webp',
  ClassNames.shade: 'assets/images/classes/shade.webp',
  ClassNames.shadower: 'assets/images/classes/shadower.webp',
  ClassNames.thunderBreaker: 'assets/images/classes/thunder_breaker.webp',
  ClassNames.wildHunter: 'assets/images/classes/wild_hunter.webp',
  ClassNames.windArcher: 'assets/images/classes/wind_archer.webp',
  ClassNames.xenon: 'assets/images/classes/xenon.webp',
  ClassNames.zero: 'assets/images/classes/zero.webp',
};
