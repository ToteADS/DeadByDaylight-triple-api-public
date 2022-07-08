import 'dart:convert';

class Perk {
  final String? sId;
  final String? role;
  final String? name;
  final String? nameTag;
  final String? perkName;
  final String? perkTag;
  final String? description;
  final int? teachLevel;
  final bool? isPtb;
  final String? lang;
  final String? icon;
  Perk({
    this.sId,
    this.role,
    this.name,
    this.nameTag,
    this.perkName,
    this.perkTag,
    this.description,
    this.teachLevel,
    this.isPtb,
    this.lang,
    this.icon,
  });

  Map<String, dynamic> toMap() {
    return {
      'sId': sId,
      'role': role,
      'name': name,
      'nameTag': nameTag,
      'perkName': perkName,
      'perkTag': perkTag,
      'description': description,
      'teachLevel': teachLevel,
      'isPtb': isPtb,
      'lang': lang,
      'icon': icon,
    };
  }

  factory Perk.fromMap(Map<String, dynamic> map) {
    return Perk(
      sId: map['sId'],
      role: map['role'],
      name: map['name'],
      nameTag: map['nameTag'],
      perkName: map['perkName'],
      perkTag: map['perkTag'],
      description: map['description'],
      teachLevel: map['teachLevel']?.toInt(),
      isPtb: map['isPtb'],
      lang: map['lang'],
      icon: map['icon'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Perk.fromJson(String source) => Perk.fromMap(json.decode(source));

  Perk copyWith({
    String? sId,
    String? role,
    String? name,
    String? nameTag,
    String? perkName,
    String? perkTag,
    String? description,
    int? teachLevel,
    bool? isPtb,
    String? lang,
    String? icon,
  }) {
    return Perk(
      sId: sId ?? this.sId,
      role: role ?? this.role,
      name: name ?? this.name,
      nameTag: nameTag ?? this.nameTag,
      perkName: perkName ?? this.perkName,
      perkTag: perkTag ?? this.perkTag,
      description: description ?? this.description,
      teachLevel: teachLevel ?? this.teachLevel,
      isPtb: isPtb ?? this.isPtb,
      lang: lang ?? this.lang,
      icon: icon ?? this.icon,
    );
  }
}
