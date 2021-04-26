import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/login/form_error.dart';
import 'package:marvel_heroes_flutter/app/shared/controller/auth/auth_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/enums/auth_status.dart';
import 'package:marvel_heroes_flutter/app/shared/model/credential.dart';
import 'package:mobx/mobx.dart';
import 'package:validators2/validators.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final AuthController authController = Modular.get();

  final FormErrorState error = FormErrorState();

  @observable
  String email = '';

  @observable
  String password = '';

  @action
  changeEmail(String newEmail) {
    email = newEmail;
    validateEmail(email);
  }

  @action
  changePassword(String newPassword) {
    password = newPassword.trim();
    validatePassword(password);
  }

  @action
  void validatePassword(String value) {
    if (isNull(value) || value.isEmpty) {
      error.password = 'Cannot be blank';
    } else {
      error.password = null;
    }
  }

  @action
  signInWithGoogle() async {
    await authController.signInWithGoogle();
    if (authController.status == AuthStatus.login) {
      Modular.to.navigate('/home');
    }
  }

  @action
  void validateEmail(String value) {
    error.email = isEmail(value) ? null : 'Not a valid email';
  }

  void validateAll() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    validateEmail(email);
  }

  void submit() async {
    validateAll();
    if (isNull(error.email) && isNull(error.password)) {
      await authController.signInWithEmailAndPassword(
        Credential(email: email, password: password),
      );
      if (authController.status == AuthStatus.login) {
        Modular.to.navigate('/home');
      }
    }
  }

  void redirectToSignUp() {
    Modular.to.navigate('/register');
  }

  void redirectToForgotPassword() {
    Modular.to.navigate('/reset-login');
  }
}
