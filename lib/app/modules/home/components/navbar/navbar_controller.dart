import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/shared/controller/auth/auth_controller.dart';
import 'package:mobx/mobx.dart';
part 'navbar_controller.g.dart';

class NavbarController = _NavbarControllerBase with _$NavbarController;

abstract class _NavbarControllerBase with Store {
  final AuthController authController = Modular.get();

  @observable
  late String accountName = '';

  @observable
  late String accountEmail = '';

  changeAccountEmail(email) => accountEmail = email;
  changeAccountName(name) => accountName = name;

  @action
  signOut() async {
    await authController.signOut();
    Modular.to.popAndPushNamed('/');
  }

  @action
  void getLoggedUser() {
    User user = authController.getLoggedUser()!;
    changeAccountName(user.displayName);
    changeAccountEmail(user.email);
  }

  @action
  void navigateToFavorite() {
    Modular.to.pushNamed('/favorite-page');
  }
}
