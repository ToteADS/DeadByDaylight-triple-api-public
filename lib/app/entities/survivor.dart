
import 'dart:convert';

import 'package:deadbydaylighttapp/app/entities/characters_icon.dart';

class Survivor {
  final String? sId;
  final String? name;
  final String? fullName;
  final String? nameTag;
  final String? gender;
  final String? role;
  final String? nationality;
  final String? voiceActor;
  final String? overview;
  final String? lore;
  final String? difficulty;
  final String? dlc;
  final int? dlcId;
  final bool? isFree;
  final bool? isPtb;
  final String? lang;
  final CharactersIcon? icon;
  final List<String>? perks;
  Survivor({
    this.sId,
    this.name,
    this.fullName,
    this.nameTag,
    this.gender,
    this.role,
    this.nationality,
    this.voiceActor,
    this.overview,
    this.lore,
    this.difficulty,
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
      'fullName': fullName,
      'nameTag': nameTag,
      'gender': gender,
      'role': role,
      'nationality': nationality,
      'voiceActor': voiceActor,
      'overview': overview,
      'lore': lore,
      'difficulty': difficulty,
      'dlc': dlc,
      'dlcId': dlcId,
      'isFree': isFree,
      'isPtb': isPtb,
      'lang': lang,
      'icon': icon?.toMap(),
      'perks': perks,
    };
  }

  factory Survivor.fromMap(Map<String, dynamic> map) {
    return Survivor(
      sId: map['sId'],
      name: map['name'],
      fullName: map['fullName'],
      nameTag: map['nameTag'],
      gender: map['gender'],
      role: map['role'],
      nationality: map['nationality'],
      voiceActor: map['voiceActor'],
      overview: map['overview'],
      lore: map['lore'],
      difficulty: map['difficulty'],
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

  factory Survivor.fromJson(String source) => Survivor.fromMap(json.decode(source));

  Survivor copyWith({
    String? sId,
    String? name,
    String? fullName,
    String? nameTag,
    String? gender,
    String? role,
    String? nationality,
    String? voiceActor,
    String? overview,
    String? lore,
    String? difficulty,
    String? dlc,
    int? dlcId,
    bool? isFree,
    bool? isPtb,
    String? lang,
    CharactersIcon? icon,
    List<String>? perks,
  }) {
    return Survivor(
      sId: sId ?? this.sId,
      name: name ?? this.name,
      fullName: fullName ?? this.fullName,
      nameTag: nameTag ?? this.nameTag,
      gender: gender ?? this.gender,
      role: role ?? this.role,
      nationality: nationality ?? this.nationality,
      voiceActor: voiceActor ?? this.voiceActor,
      overview: overview ?? this.overview,
      lore: lore ?? this.lore,
      difficulty: difficulty ?? this.difficulty,
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
