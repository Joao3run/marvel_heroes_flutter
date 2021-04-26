import 'package:mobx/mobx.dart';
part 'form_error_register.g.dart';

class FormErrorRegister = _FormErrorRegisterBase with _$FormErrorRegister;

abstract class _FormErrorRegisterBase with Store {
  @observable
  String? name;

  @observable
  String? email;

  @observable
  String? password;

  @observable
  String? repeatPassword;

  @computed
  bool get hasErrors =>
      name != null ||
      email != null ||
      password != null ||
      repeatPassword != null;
}
