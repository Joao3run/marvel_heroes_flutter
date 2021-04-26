import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/login/login_controller.dart';
import 'package:marvel_heroes_flutter/app/modules/login/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [Bind.lazySingleton((i) => LoginController())];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => LoginPage()),
  ];
}
