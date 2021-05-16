import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel_heroes_flutter/app/shared/model/character_data_wrapper.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/character/character_repository.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  bool showSearch = false;

  @action
  void changeShowSearch(value) => showSearch = value;

  final CharacterRepository repository;
  late var immutableCharacterList = [];

  _HomeControllerBase(this.repository);

  @observable
  var characterList = [];

  changeCharacterList(value) {
    print(value);
    this.characterList = value;
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
  searchHero(String value) {
    print(value);
    print('caino Hero');
    if (immutableCharacterList.length > 0) {
      var foundCharacters = immutableCharacterList
          .where((row) => (row.name.contains(value)))
          .toList();
      if (foundCharacters.length > 0) {
        changeCharacterList(foundCharacters);
      } else {
        characterList = immutableCharacterList;
      }

    }
  }
}
