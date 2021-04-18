import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/public/public_module.dart';
import 'package:marvel_heroes_flutter/app/private/private_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/public', module: PublicModule()),
    ModuleRoute('/private', module: PrivateModule())
  ];
}
