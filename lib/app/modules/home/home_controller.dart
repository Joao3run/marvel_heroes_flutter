import 'package:marvel_heroes_flutter/app/shared/model/character.dart';
import 'package:marvel_heroes_flutter/app/shared/model/character_data_wrapper.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/character/character_repository_interface.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  bool showSearch = false;

  @action
  void changeShowSearch(value) => showSearch = value;

  final ICharacterRepository repository;
  late var immutableCharacterList;

  _HomeControllerBase(this.repository);

  @observable
  ObservableList<Character> characterList = ObservableList();

  @observable
  String? query;

  @computed
  List<Character> get characterFiltereds {
    if (query != null && query!.isNotEmpty) {
      return characterList
          .where((character) =>
              character.name.toLowerCase().contains(query!.toLowerCase()))
          .toList();
    }
    return characterList.toList();
  }

  changeCharacterList(List<Character> value) {
    this.characterList = value.asObservable();
  }

  @observable
  bool showSearchIcon = true;

  @action
  changeShowSearchIcon(value) => this.showSearchIcon = value;

  @observable
  CharacterDataWrapper? characterDataWrapper;

  @observable
  bool loading = false;

  @action
  getCharacterDataWrapper() async {
    this.loading = true;
    final response = await this.repository.get(null);
    this.characterDataWrapper = response;
    this.immutableCharacterList = response.data.results;
    changeCharacterList(response.data.results);
    this.loading = false;
  }

  @action
  setQuery(String value) {
    this.query = value;
  }
}
