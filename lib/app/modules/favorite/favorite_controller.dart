import 'package:marvel_heroes_flutter/app/shared/model/character.dart';
import 'package:marvel_heroes_flutter/app/shared/model/favorite_hero.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/character/character_repository_interface.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/favorite/favorite_repository_interface.dart';
import 'package:mobx/mobx.dart';
part 'favorite_controller.g.dart';

class FavoriteController = _FavoriteControllerBase with _$FavoriteController;

abstract class _FavoriteControllerBase with Store {
  final IFavoriteRepository repository;
  final ICharacterRepository heroRepository;
  _FavoriteControllerBase(this.repository, this.heroRepository);

  @observable
  bool loading = false;

  @observable
  ObservableList<Character> characterList = ObservableList();

  @computed
  List<Character> get characterFavorited => characterList;

  @action
  getFavoriteHeroes() {
    this.loading = true;
    print('getFavoriteHeroes');
  }

  showLoading() => this.loading = true;

  hideLoading() => this.loading = false;

  changeFavoriteList(List<Character> list) {
    print(list[0].favorited);
    this.characterList = list.asObservable();
  }

  @action
  listAllFavoriteHeros() async {
    return await repository.findAllFavorite();
  }

  @action
  getCharacterDataWrapper() async {
    showLoading();
    final response = await this.heroRepository.get(null);
    List<Character> list = response.data.results;
    List<Character> listFavorite = [];
    List<FavoriteHero> favoritedId = await repository.findAllFavorite();
    print(favoritedId[0].favoriteHeroId);
    print(favoritedId[0].id);
    print(list[0].id);
    for (var favorite in favoritedId) {
      for (var hero in list) {
        if (favorite.favoriteHeroId == hero.id) {
          hero.favoritedFirebaseId = favorite.id;
          hero.favorited = true;
          listFavorite.add(hero);
        }
      }
    }
    this.characterList = listFavorite.asObservable();
    this.loading = false;
  }

  @action
  void refrashList() => getCharacterDataWrapper();
}
