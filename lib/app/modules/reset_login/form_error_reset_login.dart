import 'package:mobx/mobx.dart';
part 'form_error_reset_login.g.dart';

class FormErrorResetLogin = _FormErrorResetLoginBase with _$FormErrorResetLogin;

abstract class _FormErrorResetLoginBase with Store {
  @observable
  String? email;

  @computed
  bool get hasErrors => email != null;
}
