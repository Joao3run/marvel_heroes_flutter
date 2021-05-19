import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/modules/favorite/favorite_controller.dart';
import 'package:marvel_heroes_flutter/app/shared/components/card/hero_card_componet.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState
    extends ModularState<FavoritePage, FavoriteController> {
  @override
  void initState() {
    controller.listAllFavoriteHeros();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (controller.loading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: controller.characterFavorited.length,
              itemBuilder: (context, index) => HeroCardComponent(
                character: controller.characterFavorited[index],
              ),
            );
          }
        },
      ),
    );
  }
}
