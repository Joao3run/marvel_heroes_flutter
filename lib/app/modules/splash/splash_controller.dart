import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/shared/controller/auth/auth_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:firebase_auth/firebase_auth.dart';
part 'splash_controller.g.dart';

class SplashController = _SplashControllerBase with _$SplashController;

abstract class _SplashControllerBase with Store {
  final AuthController authController = Modular.get();

  @observable
  bool initialized = false;

  @action
  void redirectToLogi() {
    Modular.to.pushReplacementNamed("/login");
  }

  @action
  void redirectToHome() {
    Modular.to.pushReplacementNamed("/home");
  }


  void checkLoggedUser() {
    print('${authController.status}');
    User user = authController.getLoggedUser()!;
    Timer(Duration(seconds: 2), () {
      if (user.email != null) {
        redirectToHome();
      } else {
        redirectToLogi();
      }
    },);

  }
}
