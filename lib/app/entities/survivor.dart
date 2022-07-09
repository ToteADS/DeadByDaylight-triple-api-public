
import 'characters_icon.dart';

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
}
