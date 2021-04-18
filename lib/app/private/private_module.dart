import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/private/home/home_modele.dart';

class PrivateModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
  ];
}
