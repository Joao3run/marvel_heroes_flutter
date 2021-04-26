import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/register/form_error_register.dart';
import 'package:marvel_heroes_flutter/app/shared/controller/auth/auth_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/model/register_credential.dart';
import 'package:mobx/mobx.dart';
import 'package:validators2/validators.dart';
part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  final AuthController authController = Modular.get();

  final FormErrorRegister error = FormErrorRegister();

  @observable
  String name = '';

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String repeatPassword = '';

  @action
  changeName(String value) {
    name = value;
    validateName(name);
  }

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
  changeRepeatPassword(String newPassword) {
    repeatPassword = newPassword.trim();
    validateRepeatPassword(repeatPassword);
  }

  @action
  registrationWithEmailAndPassword() async {
    // await authController.
  }

  @action
  void validatePassword(String value) {
    if (isNull(value) || value.isEmpty) {
      error.password = 'Cannot be blank';
    } else if (value.length < 6) {
      error.password = 'Enter at least 6 characters';
    } else {
      error.password = null;
    }
  }

  @action
  void validateRepeatPassword(String value) {
    if (isNull(value) || value.isEmpty) {
      error.repeatPassword = 'Cannot be blank';
    } else if (!isNull(password) &&
        !isNull(repeatPassword) &&
        password.trim() != repeatPassword.trim()) {
      error.repeatPassword = 'Password no match';
    } else {
      error.repeatPassword = null;
    }
  }

  @action
  void validateEmail(String value) {
    error.email = isEmail(value) ? null : 'Not a valid email';
  }

  @action
  void validateName(String value) {
    if (isNull(value) || value.isEmpty) {
      error.name = 'Cannot be blank';
    } else if (value.length < 4) {
      error.name = 'Enter at least 4 characters';
    } else {
      error.name = null;
    }
  }

  void validateAll() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    validatePassword(password);
    validateEmail(email);
    validateName(name);
    validateRepeatPassword(repeatPassword);
  }

  void submit() async {
    validateAll();
    if (isNull(error.email) &&
        isNull(error.password) &&
        isNull(error.name) &&
        isNull(error.repeatPassword)) {
      await authController.registrationWithEmailAndPassword(
        RegisterCredential(name: name, email: email, password: password),
      );
      Modular.to.navigate('/login');
    }
  }
}
