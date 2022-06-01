import 'package:flutter/material.dart';

enum ClassNames {
  adele,
  angelicBuster,
  aran,
  ark,
  battleMage,
  beastTamer,
  bishop,
  blaster,
  blazeWizard,
  bowMaster,
  buccaneer,
  cadena,
  cannoneer,
  corsair,
  darkKnight,
  dawnWarrior,
  demonAvenger,
  demonSlayer,
  dualBlade,
  evan,
  hayato,
  hero,
  hoyoung,
  illium,
  jett,
  kain,
  kaiser,
  kanna,
  kinesis,
  lara,
  luminous,
  firePoisonMage,
  iceLightningMage,
  marksman,
  mechanic,
  mercedes,
  mihile,
  nightLord,
  nightWalker,
  paladin,
  pathfinder,
  phantom,
  shade,
  shadower,
  thunderBreaker,
  wildHunter,
  windArcher,
  xenon,
  zero
}

Map classMap = {
  ClassNames.adele: Image.asset('assets/images/adele.webp'),
  ClassNames.angelicBuster: Image.asset('assets/images/angelic_buster.webp'),
  ClassNames.aran: Image.asset('assets/images/aran.webp'),
  ClassNames.ark: Image.asset('assets/images/ark.webp'),
  ClassNames.battleMage: Image.asset('assets/images/battle_mage.webp'),
  ClassNames.beastTamer: Image.asset('assets/images/beast_tamer.webp'),
  ClassNames.bishop: Image.asset('assets/images/bishop.webp'),
  ClassNames.blaster: Image.asset('assets/images/blaster.webp'),
  ClassNames.blazeWizard: Image.asset('assets/images/blaze_wizard.webp'),
  ClassNames.bowMaster: Image.asset('assets/images/bowmaster.webp'),
  ClassNames.buccaneer: Image.asset('assets/images/buccanneer'),
  ClassNames.cadena: Image.asset('assets/images/cadena.webp'),
  ClassNames.cannoneer: Image.asset('assets/images/cannoneer.webp'),
  ClassNames.corsair: Image.asset('assets/images/corsair.webp'),
  ClassNames.darkKnight: Image.asset('assets/images/dark_knight.webp'),
  ClassNames.dawnWarrior: Image.asset('assets/images/dawn_warrior.webp'),
  ClassNames.demonAvenger: Image.asset('assets/images/demon_avenger.webp'),
  ClassNames.demonSlayer: Image.asset('assets/images/demon_slayer.webp'),
  ClassNames.dualBlade: Image.asset('assets/images/dual_blade.webp'),
  ClassNames.evan: Image.asset('assets/images/evan.webp'),
  ClassNames.firePoisonMage: Image.asset('assets/images/fp_mage.webp'),
  ClassNames.hayato: Image.asset('assets/images/hayato.webp'),
  ClassNames.hero: Image.asset('assets/images/hero.webp'),
  ClassNames.hoyoung: Image.asset('assets/images/hoyoung.webp'),
  ClassNames.iceLightningMage: Image.asset('assets/images/il_mage.webp'),
  ClassNames.illium: Image.asset('assets/images/illium.webp'),
  ClassNames.jett: Image.asset('assets/images/jett.webp'),
  ClassNames.kain: Image.asset('assets/images/kain.webp'),
  ClassNames.kaiser: Image.asset('assets/images/kaiser.webp'),
  ClassNames.kanna: Image.asset('assets/images/kanna.webp'),
  ClassNames.kinesis: Image.asset('assets/images/kinesis.webp'),
  ClassNames.lara: Image.asset('assets/images/lara.webp'),
  ClassNames.luminous: Image.asset('assets/images/luminous.webp'),
  ClassNames.marksman: Image.asset('assets/images/marksman.webp'),
  ClassNames.mechanic: Image.asset('assets/images/mechanic.webp'),
  ClassNames.mercedes: Image.asset('assets/images/mercedes.webp'),
  ClassNames.mihile: Image.asset('assets/images/mihile.webp'),
  ClassNames.nightLord: Image.asset('assets/images/night_lord.webp'),
  ClassNames.nightWalker: Image.asset('assets/images/night_walker.webp'),
  ClassNames.paladin: Image.asset('assets/images/paladin.webp'),
  ClassNames.pathfinder: Image.asset('assets/images/pathfinder.webp'),
  ClassNames.phantom: Image.asset('assets/images/phantom.webp'),
  ClassNames.shade: Image.asset('assets/images/shade.webp'),
  ClassNames.shadower: Image.asset('assets/images/shadower.webp'),
  ClassNames.thunderBreaker: Image.asset('assets/images/thunder_breaker.webp'),
  ClassNames.wildHunter: Image.asset('assets/images/wild_hunter.webp'),
  ClassNames.windArcher: Image.asset('assets/images/wind_archer.webp'),
  ClassNames.xenon: Image.asset('assets/images/xenon.webp'),
  ClassNames.zero: Image.asset('assets/images/zero.webp'),
};

class Character {
  final String name;
  final int level;
  final CharacterClass characterClass;

  // Constructor
  Character(this.name, this.level, this.characterClass);
}

class CharacterClass {
  final Enum className;
  final Image classImage;

  CharacterClass(this.className) : classImage = classMap[className];
}
