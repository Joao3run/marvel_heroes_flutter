import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marvel_heroes_flutter/app/shared/enums/auth_status.dart';
import 'package:marvel_heroes_flutter/app/shared/model/credential.dart';
import 'package:marvel_heroes_flutter/app/shared/model/register_credential.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/auth/auth_repository.dart';
import 'package:mobx/mobx.dart';
part 'auth_controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final AuthRepository authRepository = Modular.get();

  @observable
  User? user;

  @observable
  AuthStatus status = AuthStatus.loading;

  @action
  Future signInWithGoogle() async {
    final user = await authRepository.signInWithGoogle();
    setUser(user);
  }

  setUser(User? user) {
    this.user = user;
    this.status = this.user == null ? AuthStatus.logoff : AuthStatus.login;
  }

  @action
  Future signOut() async {
    await authRepository.signOut();
  }

  @action
  User? getLoggedUser() {
    return authRepository.getLoggedUser();
  }

  @action
  Future registrationWithEmailAndPassword(
      RegisterCredential registerCredential) async {
    try {
      final user = await authRepository
          .registrationWithEmailAndPassword(registerCredential);
      print(user.displayName);
      setUser(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @action
  Future signInWithEmailAndPassword(Credential credential) async {
    try {
      final user = await authRepository.signInWithEmailAndPassword(credential);
      setUser(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  @action
  void sendPasswordResetEmail(String email) {
    authRepository.sendPasswordResetEmail(email);
  }
}
