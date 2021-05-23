import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:marvel_heroes_flutter/app/shared/model/favorite_hero.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/favorite/favorite_repository_interface.dart';

class FavoriteRepository implements IFavoriteRepository {
  final FirebaseFirestore firebaseFirestore;
  FavoriteRepository({required this.firebaseFirestore});

  @override
  Future<List<FavoriteHero>> findAllFavorite() async {
    QuerySnapshot querySnapshot =
        await this.firebaseFirestore.collection('favoriteHeroes').get();
    return querySnapshot.docs
        .map((QueryDocumentSnapshot doc) =>
            FavoriteHero.fromMap(doc.data(), doc.id))
        .toList();
  }

  @override
  Future<void> save(FavoriteHero favoriteHero) async {
    await this
        .firebaseFirestore
        .collection('favoriteHeroes')
        .add(favoriteHero.toMap());
  }

  @override
  Future<void> delete(String id) async {
    await this.firebaseFirestore.collection('favoriteHeroes').doc(id).delete();
  }
}
