// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthController on _AuthControllerBase, Store {
  final _$userAtom = Atom(name: '_AuthControllerBase.user');

  @override
  User? get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User? value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$statusAtom = Atom(name: '_AuthControllerBase.status');

  @override
  AuthStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(AuthStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$signInWithGoogleAsyncAction =
      AsyncAction('_AuthControllerBase.signInWithGoogle');

  @override
  Future<dynamic> signInWithGoogle() {
    return _$signInWithGoogleAsyncAction.run(() => super.signInWithGoogle());
  }

  final _$signOutAsyncAction = AsyncAction('_AuthControllerBase.signOut');

  @override
  Future<dynamic> signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  final _$registrationWithEmailAndPasswordAsyncAction =
      AsyncAction('_AuthControllerBase.registrationWithEmailAndPassword');

  @override
  Future<dynamic> registrationWithEmailAndPassword(
      RegisterCredential registerCredential) {
    return _$registrationWithEmailAndPasswordAsyncAction
        .run(() => super.registrationWithEmailAndPassword(registerCredential));
  }

  final _$signInWithEmailAndPasswordAsyncAction =
      AsyncAction('_AuthControllerBase.signInWithEmailAndPassword');

  @override
  Future<dynamic> signInWithEmailAndPassword(Credential credential) {
    return _$signInWithEmailAndPasswordAsyncAction
        .run(() => super.signInWithEmailAndPassword(credential));
  }

  final _$_AuthControllerBaseActionController =
      ActionController(name: '_AuthControllerBase');

  @override
  User? getLoggedUser() {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction(
        name: '_AuthControllerBase.getLoggedUser');
    try {
      return super.getLoggedUser();
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void sendPasswordResetEmail(String email) {
    final _$actionInfo = _$_AuthControllerBaseActionController.startAction(
        name: '_AuthControllerBase.sendPasswordResetEmail');
    try {
      return super.sendPasswordResetEmail(email);
    } finally {
      _$_AuthControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user},
status: ${status}
    ''';
  }
}
