import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/shared/controller/auth/auth_controller.dart';
import 'package:mobx/mobx.dart';
part 'splash_controller.g.dart';

class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  // final AuthController authController = Modular.get();

  @observable
  bool initialized = false;

  @observable
  bool error = false;

  @action
  initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();
      Timer(Duration(seconds: 2), () {
        initialized = true;
        redirectToLogi();
      });
    } catch (e) {
      error = true;
    }
  }

  @action
  void redirectToLogi() {
    Modular.to.pushReplacementNamed("/login");
  }

  @action
  void redirectToHome() {
    Modular.to.pushReplacementNamed("/home");
  }
}
