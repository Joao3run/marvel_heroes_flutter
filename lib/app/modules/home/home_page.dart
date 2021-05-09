import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/home/componets/navbar/navbar_component.dart';
import 'package:marvel_heroes_flutter/app/modules/home/home_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/model/character.dart';

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
        appBar: AppBar(
          title: Text("Marvel Heroes"),
          backgroundColor: Colors.redAccent,
          actions: [],
        ),
        drawer: NavBar(),
        body: Observer(builder: (_) {
          if (controller.loading || controller.characterDataWrapper == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: controller.characterDataWrapper?.data.results.length,
              itemBuilder: (context, i) {
                final Character? character =
                    controller.characterDataWrapper?.data.results[i];
                if (character != null) {
                  return Image.network(character.thumbnail.nameComplete());
                } else {
                  return Text('Não encontrado');
                }
              },
            );
          }
        }));
  }
}
