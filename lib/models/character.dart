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

// Map of ClassName to asset image string path
// This allows us to use the Image.asset widget in any file this is needed
// Makes code more clear in files that use objects created using this Map
Map classMap = {
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

class Character {
  final String name;
  final CharacterClass characterClass;

  // Constructor
  Character(this.name, this.characterClass);
}

class CharacterClass {
  final Enum className;
  final String classImage;

  CharacterClass(this.className) : classImage = classMap[className];
}
