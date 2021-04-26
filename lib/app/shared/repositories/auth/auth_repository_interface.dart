import 'package:firebase_auth/firebase_auth.dart';
import 'package:marvel_heroes_flutter/app/shared/model/credential.dart';
import 'package:marvel_heroes_flutter/app/shared/model/register_credential.dart';

abstract class IAuthRepository {
  Future<User> signInWithGoogle();
  Future<User> signInWithEmailAndPassword(Credential credential);
  Future<User> registrationWithEmailAndPassword(
      RegisterCredential registerCredential);
  Future<void> signOut();
  User? getLoggedUser();
  void sendPasswordResetEmail(String email);
}
