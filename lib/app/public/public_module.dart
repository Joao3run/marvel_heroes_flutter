import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/public/login/login_module.dart';
import 'package:marvel_heroes_flutter/app/public/register/register_module.dart';
import 'package:marvel_heroes_flutter/app/public/splash/splash_page.dart';

class PublicModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/splash', child: (_, __) => SplashPage()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/register', module: RegisterModule())
  ];
}
