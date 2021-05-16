import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:marvel_heroes_flutter/app/modules/character/character_module.dart';
import 'package:marvel_heroes_flutter/app/modules/favorite/favorite_module.dart';
import 'package:marvel_heroes_flutter/app/modules/home/home_module.dart';
import 'package:marvel_heroes_flutter/app/modules/login/login_module.dart';
import 'package:marvel_heroes_flutter/app/modules/register/register_controller.dart';
import 'package:marvel_heroes_flutter/app/modules/register/register_module.dart';
import 'package:marvel_heroes_flutter/app/modules/reset_login/reset_login_module.dart';
import 'package:marvel_heroes_flutter/app/modules/splash/splash_controller.dart';
import 'package:marvel_heroes_flutter/app/modules/splash/splash_page.dart';
import 'package:marvel_heroes_flutter/app/shared/controller/auth/auth_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/http/http_provider.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/auth/auth_repository.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/character/character_repository.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashController()),
    Bind.lazySingleton((i) => RegisterController()),
    Bind.lazySingleton<AuthRepository>(
      (i) => AuthRepository(
        firebaseAuth: FirebaseAuth.instance,
        googleSignIn: GoogleSignIn(),
      ),
    ),
    Bind<AuthController>((i) => AuthController()),
    Bind.lazySingleton((i) => HttpProvider()),
    Bind.lazySingleton((i) => CharacterRepository(httpProvider: i.get()))
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, __) => SplashPage(), transition: TransitionType.fadeIn),
    ModuleRoute('/login',
        module: LoginModule(), transition: TransitionType.fadeIn),
    ModuleRoute('/register',
        module: RegisterModule(), transition: TransitionType.fadeIn),
    ModuleRoute('/home',
        module: HomeModule(), transition: TransitionType.fadeIn),
    ModuleRoute('/reset-login',
        module: ResetLoginModule(), transition: TransitionType.fadeIn),
    ModuleRoute(
      '/hero-page',
      module: CharacterModule(),
    ),
    ModuleRoute(
      '/favorite-page',
      module: FavoriteModule(),
    ),
  ];
}
