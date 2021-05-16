import 'package:flutter_modular/flutter_modular.dart';

import 'character_page.dart';

class CharacterModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => CharacterPage(character: args.data)),
  ];
}
