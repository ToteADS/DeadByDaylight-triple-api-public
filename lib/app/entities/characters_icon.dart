
class CharactersIcon {
  final String? portrait;
  final String? previewPortrait;
  final String? shopBackground;
  CharactersIcon({
    this.portrait,
    this.previewPortrait,
    this.shopBackground,
  });

  factory CharactersIcon.fromMap(Map<String, dynamic> map) {
    return CharactersIcon(
      portrait: map['portrait'],
      previewPortrait: map['preview_portrait'],
      shopBackground: map['shop_background'],
    );
  }
}
