import 'package:marvel_heroes_flutter/app/shared/http/http_provider.dart';
import 'package:marvel_heroes_flutter/app/shared/model/character_data_wrapper.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/character/character_repository_interface.dart';

class CharacterRepository implements ICharacterRepository {
  final HttpProvider httpProvider;
  final String url = '/v1/public/characters';

  CharacterRepository({required this.httpProvider});

  @override
  Future<CharacterDataWrapper> get(Map<String, dynamic>? params) async {
    final result = await this.httpProvider.get(this.url, params);
    return CharacterDataWrapper.fromMap(result);
  }
}
