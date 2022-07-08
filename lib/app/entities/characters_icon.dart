import 'dart:convert';

class CharactersIcon {
  final String? portrait;
  final String? previewPortrait;
  final String? shopBackground;
  CharactersIcon({
    this.portrait,
    this.previewPortrait,
    this.shopBackground,
  });

  Map<String, dynamic> toMap() {
    return {
      'portrait': portrait,
      'previewPortrait': previewPortrait,
      'shopBackground': shopBackground,
    };
  }

  factory CharactersIcon.fromMap(Map<String, dynamic> map) {
    return CharactersIcon(
      portrait: map['portrait'],
      previewPortrait: map['previewPortrait'],
      shopBackground: map['shopBackground'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CharactersIcon.fromJson(String source) => CharactersIcon.fromMap(json.decode(source));

  CharactersIcon copyWith({
    String? portrait,
    String? previewPortrait,
    String? shopBackground,
  }) {
    return CharactersIcon(
      portrait: portrait ?? this.portrait,
      previewPortrait: previewPortrait ?? this.previewPortrait,
      shopBackground: shopBackground ?? this.shopBackground,
    );
  }
}
