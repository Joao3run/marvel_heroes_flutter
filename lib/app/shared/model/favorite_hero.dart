import 'dart:convert';

class FavoriteHero {
  int? favoriteHeroId;

  FavoriteHero({
    this.favoriteHeroId,
  });

  Map<String, dynamic> toMap() {
    return {
      'favoriteHeroId': favoriteHeroId,
    };
  }

  factory FavoriteHero.fromMap(Map<String, dynamic> map) {
    return FavoriteHero(
      favoriteHeroId: map['favoriteHeroId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory FavoriteHero.fromJson(String source) =>
      FavoriteHero.fromMap(json.decode(source));
}
