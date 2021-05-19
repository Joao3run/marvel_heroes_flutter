import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/favorite/favorite_controller.dart';
import 'package:marvel_heroes_flutter/app/modules/favorite/favorite_page.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/favorite/favorite_repository.dart';

class FavoriteModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => FavoriteController(i.get())),
    Bind.lazySingleton((i) =>
        FavoriteRepository(firebaseFirestore: FirebaseFirestore.instance))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => FavoritePage()),
  ];
}
