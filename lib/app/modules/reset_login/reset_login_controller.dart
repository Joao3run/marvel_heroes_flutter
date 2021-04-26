import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/register/form_error_register.dart';
import 'package:marvel_heroes_flutter/app/shared/controller/auth/auth_controller.dart';
import 'package:mobx/mobx.dart';
import 'package:validators2/validators.dart';
part 'reset_login_controller.g.dart';

class ResetLoginController = _ResetLoginControllerBase
    with _$ResetLoginController;

abstract class _ResetLoginControllerBase with Store {
  final AuthController authController = Modular.get();

  final FormErrorRegister error = FormErrorRegister();

  @observable
  String email = '';

  @action
  changeEmail(String newEmail) {
    email = newEmail;
    validateEmail(email);
  }

  @action
  void validateEmail(String value) {
    error.email = isEmail(value) ? null : 'Not a valid email';
  }

  void validateAll() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    validateEmail(email);
  }

  void submit() {
    validateAll();
    if (isNull(error.email)) {
      authController.sendPasswordResetEmail(email);
      redirectToLogin();
    }
  }

  void redirectToLogin() {
    Modular.to.navigate('/login');
  }
}
