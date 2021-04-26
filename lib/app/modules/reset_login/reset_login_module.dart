import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/reset_login/reset_login_controller.dart';
import 'package:marvel_heroes_flutter/app/modules/reset_login/reset_login_page.dart';

class ResetLoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ResetLoginController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => ResetLoginPage()),
  ];
}
