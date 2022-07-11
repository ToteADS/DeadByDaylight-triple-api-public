
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

  factory Perk.fromMap(Map<String, dynamic> map) {
    return Perk(
      sId: map['_id'],
      role: map['role'],
      name: map['name'],
      nameTag: map['name_tag'],
      perkName: map['perk_name'],
      perkTag: map['perk_tag'],
      description: map['description'],
      teachLevel: map['teach_level']?.toInt(),
      isPtb: map['is_ptb'],
      lang: map['lang'],
      icon: map['icon'],
    );
  }

}
