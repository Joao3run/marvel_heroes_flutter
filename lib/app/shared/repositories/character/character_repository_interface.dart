import 'package:marvel_heroes_flutter/app/shared/model/character_data_wrapper.dart';

abstract class ICharacterRepository {
  Future<CharacterDataWrapper> get(Map<String, dynamic>? params);
}
