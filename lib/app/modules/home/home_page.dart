import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/home/home_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/controller/auth/auth_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final AuthController authController = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Marvel Heroes"), backgroundColor: Colors.redAccent),
        body: Container(
          child: Column(
            children: [
              // Image.network(authController.user!.photoURL!),
              Text(authController.user!.displayName!),
              Text(authController.user!.email!),
              Center(
                child: OutlinedButton(
                  child: Text('User'),
                  onPressed: () {
                    controller.getLoggedUser();
                    print('loggof');
                  },
                ),
              ),
              Center(
                child: OutlinedButton(
                  child: Text('Logof'),
                  onPressed: () {
                    controller.signOut();
                    print('loggof');
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
