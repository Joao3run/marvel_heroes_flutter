import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:marvel_heroes_flutter/app/shared/model/credential.dart';
import 'package:marvel_heroes_flutter/app/shared/model/register_credential.dart';
import 'package:marvel_heroes_flutter/app/shared/repositories/auth/auth_repository_interface.dart';

class AuthRepository implements IAuthRepository {
  final GoogleSignIn googleSignIn;
  final FirebaseAuth firebaseAuth;

  AuthRepository({required this.firebaseAuth, required this.googleSignIn});

  @override
  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    UserCredential result = await firebaseAuth.signInWithCredential(credential);
    return result.user!;
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  @override
  User? getLoggedUser() {
    return firebaseAuth.currentUser;
  }

  @override
  Future<User> registrationWithEmailAndPassword(
      RegisterCredential registerCredential) async {
    UserCredential result = await firebaseAuth.createUserWithEmailAndPassword(
        email: registerCredential.email, password: registerCredential.password);
    result.user!.updateProfile(displayName: registerCredential.name);
    return result.user!;
  }

  @override
  Future<User> signInWithEmailAndPassword(Credential credential) async {
    UserCredential result = await firebaseAuth.signInWithEmailAndPassword(
        email: credential.email, password: credential.password);
    return result.user!;
  }

  @override
  void sendPasswordResetEmail(String email) {
    firebaseAuth.sendPasswordResetEmail(email: email);
  }
}
