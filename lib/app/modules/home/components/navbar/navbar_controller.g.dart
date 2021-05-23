// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navbar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavbarController on _NavbarControllerBase, Store {
  final _$accountNameAtom = Atom(name: '_NavbarControllerBase.accountName');

  @override
  String get accountName {
    _$accountNameAtom.reportRead();
    return super.accountName;
  }

  @override
  set accountName(String value) {
    _$accountNameAtom.reportWrite(value, super.accountName, () {
      super.accountName = value;
    });
  }

  final _$accountEmailAtom = Atom(name: '_NavbarControllerBase.accountEmail');

  @override
  String get accountEmail {
    _$accountEmailAtom.reportRead();
    return super.accountEmail;
  }

  @override
  set accountEmail(String value) {
    _$accountEmailAtom.reportWrite(value, super.accountEmail, () {
      super.accountEmail = value;
    });
  }

  final _$signOutAsyncAction = AsyncAction('_NavbarControllerBase.signOut');

  @override
  Future signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  final _$_NavbarControllerBaseActionController =
      ActionController(name: '_NavbarControllerBase');

  @override
  void getLoggedUser() {
    final _$actionInfo = _$_NavbarControllerBaseActionController.startAction(
        name: '_NavbarControllerBase.getLoggedUser');
    try {
      return super.getLoggedUser();
    } finally {
      _$_NavbarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void navigateToFavorite() {
    final _$actionInfo = _$_NavbarControllerBaseActionController.startAction(
        name: '_NavbarControllerBase.navigateToFavorite');
    try {
      return super.navigateToFavorite();
    } finally {
      _$_NavbarControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
accountName: ${accountName},
accountEmail: ${accountEmail}
    ''';
  }
}
