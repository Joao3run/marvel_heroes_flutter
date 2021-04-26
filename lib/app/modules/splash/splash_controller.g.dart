// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SplashController on _SplashControllerBase, Store {
  final _$initializedAtom = Atom(name: '_SplashControllerBase.initialized');

  @override
  bool get initialized {
    _$initializedAtom.reportRead();
    return super.initialized;
  }

  @override
  set initialized(bool value) {
    _$initializedAtom.reportWrite(value, super.initialized, () {
      super.initialized = value;
    });
  }

  final _$errorAtom = Atom(name: '_SplashControllerBase.error');

  @override
  bool get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(bool value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$initializeFlutterFireAsyncAction =
      AsyncAction('_SplashControllerBase.initializeFlutterFire');

  @override
  Future initializeFlutterFire() {
    return _$initializeFlutterFireAsyncAction
        .run(() => super.initializeFlutterFire());
  }

  final _$_SplashControllerBaseActionController =
      ActionController(name: '_SplashControllerBase');

  @override
  void redirectToLogi() {
    final _$actionInfo = _$_SplashControllerBaseActionController.startAction(
        name: '_SplashControllerBase.redirectToLogi');
    try {
      return super.redirectToLogi();
    } finally {
      _$_SplashControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void redirectToHome() {
    final _$actionInfo = _$_SplashControllerBaseActionController.startAction(
        name: '_SplashControllerBase.redirectToHome');
    try {
      return super.redirectToHome();
    } finally {
      _$_SplashControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
initialized: ${initialized},
error: ${error}
    ''';
  }
}
