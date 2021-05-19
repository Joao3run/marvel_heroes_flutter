import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/home/components/navbar/navbar_component.dart';
import 'package:marvel_heroes_flutter/app/modules/home/home_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/components/card/hero_card_componet.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  void initState() {
    controller.getCharacterDataWrapper();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(50, 50),
        child: Observer(
          builder: (_) {
            return AppBar(
              title: controller.showSearch
                  ? TextField(
                      onChanged: controller.setQuery,
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search Hero',
                      ),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    )
                  : Text('Marvel Heroes'),
              backgroundColor: Colors.redAccent,
              actions: [
                IconButton(
                  icon: controller.showSearchIcon
                      ? Icon(Icons.search)
                      : Icon(Icons.cancel),
                  onPressed: () {
                    print(controller.showSearch);
                    if (controller.showSearch == false) {
                      controller.changeShowSearch(true);
                      controller.changeShowSearchIcon(false);
                    } else {
                      controller.changeShowSearch(false);
                      controller.changeShowSearchIcon(true);
                    }
                  },
                ),
              ],
            );
          },
        ),
      ),
      drawer: NavBar(),
      body: Observer(
        builder: (_) {
          if (controller.loading || controller.characterDataWrapper == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: controller.characterFiltereds.length,
              itemBuilder: (context, index) => HeroCardComponent(
                character: controller.characterFiltereds[index],
              ),
            );
          }
        },
      ),
    );
  }
}
