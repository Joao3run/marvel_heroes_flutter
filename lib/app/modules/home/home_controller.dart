import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/shared/controller/auth/auth_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/model/character_data_wrapper.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/character/character_repository.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {

  final CharacterRepository repository;

  _HomeControllerBase(this.repository);

  @observable
  CharacterDataWrapper? characterDataWrapper;

  @observable
  bool loading = false;

  @action
  getCharacterDataWrapper() async {
    this.loading = true;
    this.characterDataWrapper = await this.repository.get(null);
    this.loading = false;
  }
}
