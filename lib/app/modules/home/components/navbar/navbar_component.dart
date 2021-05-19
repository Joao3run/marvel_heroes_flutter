import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/home/components/navbar/navbar_controller.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends ModularState<NavBar, NavbarController> {
  @override
  void initState() {
    controller.getLoggedUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Observer(builder: (_) {
            return UserAccountsDrawerHeader(
              accountName: Text(controller.accountName),
              accountEmail: Text(controller.accountEmail),
            );
          }),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => controller.navigateToFavorite(),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Log Out'),
            onTap: () => controller.signOut(),
          )
        ],
      ),
    );
  }
}
