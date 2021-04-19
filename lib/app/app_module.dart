import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/home/home_modele.dart';
import 'package:marvel_heroes_flutter/app/modules/login/login_module.dart';
import 'package:marvel_heroes_flutter/app/modules/register/register_module.dart';
import 'package:marvel_heroes_flutter/app/modules/splash/splash_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, __) => SplashPage(), transition: TransitionType.fadeIn),
    ModuleRoute('/login',
        module: LoginModule(), transition: TransitionType.fadeIn),
    ModuleRoute('/register',
        module: RegisterModule(), transition: TransitionType.fadeIn),
    ModuleRoute('/home',
        module: HomeModule(), transition: TransitionType.fadeIn)
  ];
}
