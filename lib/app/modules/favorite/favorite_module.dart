import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/favorite/favorite_controller.dart';
import 'package:marvel_heroes_flutter/app/modules/favorite/favorite_page.dart';

class FavoriteModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => FavoriteController(i.get(), i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => FavoritePage()),
  ];
}
