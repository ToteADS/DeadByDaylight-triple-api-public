
import 'characters_icon.dart';

class Killer {
  final String? sId;
  final String? name;
  final String? nameTag;
  final String? fullName;
  final String? alias;
  final String? gender;
  final String? nationality;
  final String? realm;
  final String? power;
  final String? weapon;
  final String? speed;
  final String? terrorRadius;
  final String? height;
  final String? voiceActor;
  final String? difficulty;
  final String? overview;
  final String? lore;
  final String? dlc;
  final int? dlcId;
  final bool? isFree;
  final bool? isPtb;
  final String? lang;
  final CharactersIcon? icon;
  final List<String>? perks;
  Killer({
    this.sId,
    this.name,
    this.nameTag,
    this.fullName,
    this.alias,
    this.gender,
    this.nationality,
    this.realm,
    this.power,
    this.weapon,
    this.speed,
    this.terrorRadius,
    this.height,
    this.voiceActor,
    this.difficulty,
    this.overview,
    this.lore,
    this.dlc,
    this.dlcId,
    this.isFree,
    this.isPtb,
    this.lang,
    this.icon,
    this.perks,
  });

  factory Killer.fromMap(Map<String, dynamic> map) {
    return Killer(
      sId: map['_id'],
      name: map['name'],
      nameTag: map['name_tag'],
      fullName: map['full_name'],
      alias: map['alias'],
      gender: map['gender'],
      nationality: map['nationality'],
      realm: map['realm'],
      power: map['power'],
      weapon: map['weapon'],
      speed: map['speed'],
      terrorRadius: map['terror_radius'],
      height: map['height'],
      voiceActor: map['voice_actor'],
      difficulty: map['difficulty'],
      overview: map['overview'],
      lore: map['lore'],
      dlc: map['dlc'],
      dlcId: map['dlc_id']?.toInt(),
      isFree: map['is_free'],
      isPtb: map['is_ptb'],
      lang: map['lang'],
      icon: map['icon'] != null ? CharactersIcon.fromMap(map['icon']) : null,
      perks: List<String>.from(map['perks']),
    );
  }
}
