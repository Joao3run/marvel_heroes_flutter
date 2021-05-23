import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/home/components/navbar/navbar_controller.dart';
import 'package:marvel_heroes_flutter/app/modules/home/home_controller.dart';
import 'package:marvel_heroes_flutter/app/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => NavbarController()),
    Bind.lazySingleton((i) => HomeController(i.get(), i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => HomePage()),
  ];
}
