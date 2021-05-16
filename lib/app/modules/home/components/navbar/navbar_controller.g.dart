// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navbar_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NavbarController on _NavbarControllerBase, Store {
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
  String toString() {
    return '''

    ''';
  }
}
