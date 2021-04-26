// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ResetLoginController on _ResetLoginControllerBase, Store {
  final _$emailAtom = Atom(name: '_ResetLoginControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$_ResetLoginControllerBaseActionController =
      ActionController(name: '_ResetLoginControllerBase');

  @override
  dynamic changeEmail(String newEmail) {
    final _$actionInfo = _$_ResetLoginControllerBaseActionController
        .startAction(name: '_ResetLoginControllerBase.changeEmail');
    try {
      return super.changeEmail(newEmail);
    } finally {
      _$_ResetLoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String value) {
    final _$actionInfo = _$_ResetLoginControllerBaseActionController
        .startAction(name: '_ResetLoginControllerBase.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$_ResetLoginControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email}
    ''';
  }
}
