import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/shared/controller/auth/auth_controller.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AuthController authController = Modular.get();

  @action
  signOut() async {
    await authController.signOut();
    Modular.to.popAndPushNamed('/');
  }

  @action
  void getLoggedUser() {
    var a = authController.getLoggedUser()!;
    print('LogedUser  ${a.displayName}');
  }
}
