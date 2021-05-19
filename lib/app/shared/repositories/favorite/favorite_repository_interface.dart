import 'package:marvel_heroes_flutter/app/shared/model/favorite_hero.dart';

abstract class IFavoriteRepository {
  Future<List<FavoriteHero>> findAllFavorite();
  Future<void> save(FavoriteHero favoriteHero);
}
