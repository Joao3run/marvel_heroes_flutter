import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/shared/model/character.dart';


class HeroCardComponent extends StatelessWidget {
  final Character? character;

  const HeroCardComponent({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        onTap: () {
          Modular.to.pushNamed('/hero-page', arguments: character);
        },
        child: Column(
          children: [
            Stack(
              children: [
                Ink.image(
                  height: 400,
                  image: NetworkImage(character!.thumbnail.nameComplete()),
                  fit: BoxFit.fitWidth,
                ),
                _criaNomeHeroi(context, character!.name),
              ],
            ),
            Column(
              children: [
                _buildDescription(context, character!.description),
                _buildButtonBar(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _criaNomeHeroi(BuildContext context, String name) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.black.withOpacity(0.8),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Text(
          name,
          style: Theme.of(context)
              .textTheme
              .headline6!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildDescription(BuildContext context, String? description) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        description == null || description.isEmpty
            ? 'Não possui descrição'
            : description,
        style: Theme.of(context).textTheme.subtitle2,
      ),
    );
  }

  Widget _buildButtonBar() {
    return ButtonBar(
      children: [
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {
            print('Favoritou');
          },
        )
      ],
    );
  }
}
