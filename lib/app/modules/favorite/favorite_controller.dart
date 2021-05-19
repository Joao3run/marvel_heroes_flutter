import 'package:marvel_heroes_flutter/app/shared/model/character.dart';
import 'package:marvel_heroes_flutter/app/shared/model/favorite_hero.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/favorite/favorite_repository_interface.dart';
import 'package:mobx/mobx.dart';
part 'favorite_controller.g.dart';

class FavoriteController = _FavoriteControllerBase with _$FavoriteController;

abstract class _FavoriteControllerBase with Store {
  final IFavoriteRepository repository;
  _FavoriteControllerBase(this.repository);

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

  changeFavoriteList(List<FavoriteHero> list) {
    print(list[0].favoriteHeroId);
    // TODO fazer o match com o character list
    // this.characterList = list.asObservable();
  }

  @action
  listAllFavoriteHeros() async {
    showLoading();
    final response = await repository.findAllFavorite();
    changeFavoriteList(response);
    hideLoading();
  }
}
