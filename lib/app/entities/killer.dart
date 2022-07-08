
import 'dart:convert';

import 'package:deadbydaylighttapp/app/entities/characters_icon.dart';

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

  Map<String, dynamic> toMap() {
    return {
      'sId': sId,
      'name': name,
      'nameTag': nameTag,
      'fullName': fullName,
      'alias': alias,
      'gender': gender,
      'nationality': nationality,
      'realm': realm,
      'power': power,
      'weapon': weapon,
      'speed': speed,
      'terrorRadius': terrorRadius,
      'height': height,
      'voiceActor': voiceActor,
      'difficulty': difficulty,
      'overview': overview,
      'lore': lore,
      'dlc': dlc,
      'dlcId': dlcId,
      'isFree': isFree,
      'isPtb': isPtb,
      'lang': lang,
      'icon': icon?.toMap(),
      'perks': perks,
    };
  }

  factory Killer.fromMap(Map<String, dynamic> map) {
    return Killer(
      sId: map['sId'],
      name: map['name'],
      nameTag: map['nameTag'],
      fullName: map['fullName'],
      alias: map['alias'],
      gender: map['gender'],
      nationality: map['nationality'],
      realm: map['realm'],
      power: map['power'],
      weapon: map['weapon'],
      speed: map['speed'],
      terrorRadius: map['terrorRadius'],
      height: map['height'],
      voiceActor: map['voiceActor'],
      difficulty: map['difficulty'],
      overview: map['overview'],
      lore: map['lore'],
      dlc: map['dlc'],
      dlcId: map['dlcId']?.toInt(),
      isFree: map['isFree'],
      isPtb: map['isPtb'],
      lang: map['lang'],
      icon: map['icon'] != null ? CharactersIcon.fromMap(map['icon']) : null,
      perks: List<String>.from(map['perks']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Killer.fromJson(String source) => Killer.fromMap(json.decode(source));

  Killer copyWith({
    String? sId,
    String? name,
    String? nameTag,
    String? fullName,
    String? alias,
    String? gender,
    String? nationality,
    String? realm,
    String? power,
    String? weapon,
    String? speed,
    String? terrorRadius,
    String? height,
    String? voiceActor,
    String? difficulty,
    String? overview,
    String? lore,
    String? dlc,
    int? dlcId,
    bool? isFree,
    bool? isPtb,
    String? lang,
    CharactersIcon? icon,
    List<String>? perks,
  }) {
    return Killer(
      sId: sId ?? this.sId,
      name: name ?? this.name,
      nameTag: nameTag ?? this.nameTag,
      fullName: fullName ?? this.fullName,
      alias: alias ?? this.alias,
      gender: gender ?? this.gender,
      nationality: nationality ?? this.nationality,
      realm: realm ?? this.realm,
      power: power ?? this.power,
      weapon: weapon ?? this.weapon,
      speed: speed ?? this.speed,
      terrorRadius: terrorRadius ?? this.terrorRadius,
      height: height ?? this.height,
      voiceActor: voiceActor ?? this.voiceActor,
      difficulty: difficulty ?? this.difficulty,
      overview: overview ?? this.overview,
      lore: lore ?? this.lore,
      dlc: dlc ?? this.dlc,
      dlcId: dlcId ?? this.dlcId,
      isFree: isFree ?? this.isFree,
      isPtb: isPtb ?? this.isPtb,
      lang: lang ?? this.lang,
      icon: icon ?? this.icon,
      perks: perks ?? this.perks,
    );
  }
}
