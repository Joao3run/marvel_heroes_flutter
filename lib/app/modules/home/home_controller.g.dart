// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<List<Character>>? _$characterFilteredsComputed;

  @override
  List<Character> get characterFiltereds => (_$characterFilteredsComputed ??=
          Computed<List<Character>>(() => super.characterFiltereds,
              name: '_HomeControllerBase.characterFiltereds'))
      .value;

  final _$showSearchAtom = Atom(name: '_HomeControllerBase.showSearch');

  @override
  bool get showSearch {
    _$showSearchAtom.reportRead();
    return super.showSearch;
  }

  @override
  set showSearch(bool value) {
    _$showSearchAtom.reportWrite(value, super.showSearch, () {
      super.showSearch = value;
    });
  }

  final _$characterListAtom = Atom(name: '_HomeControllerBase.characterList');

  @override
  ObservableList<Character> get characterList {
    _$characterListAtom.reportRead();
    return super.characterList;
  }

  @override
  set characterList(ObservableList<Character> value) {
    _$characterListAtom.reportWrite(value, super.characterList, () {
      super.characterList = value;
    });
  }

  final _$queryAtom = Atom(name: '_HomeControllerBase.query');

  @override
  String? get query {
    _$queryAtom.reportRead();
    return super.query;
  }

  @override
  set query(String? value) {
    _$queryAtom.reportWrite(value, super.query, () {
      super.query = value;
    });
  }

  final _$showSearchIconAtom = Atom(name: '_HomeControllerBase.showSearchIcon');

  @override
  bool get showSearchIcon {
    _$showSearchIconAtom.reportRead();
    return super.showSearchIcon;
  }

  @override
  set showSearchIcon(bool value) {
    _$showSearchIconAtom.reportWrite(value, super.showSearchIcon, () {
      super.showSearchIcon = value;
    });
  }

  final _$characterDataWrapperAtom =
      Atom(name: '_HomeControllerBase.characterDataWrapper');

  @override
  CharacterDataWrapper? get characterDataWrapper {
    _$characterDataWrapperAtom.reportRead();
    return super.characterDataWrapper;
  }

  @override
  set characterDataWrapper(CharacterDataWrapper? value) {
    _$characterDataWrapperAtom.reportWrite(value, super.characterDataWrapper,
        () {
      super.characterDataWrapper = value;
    });
  }

  final _$loadingAtom = Atom(name: '_HomeControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$getCharacterDataWrapperAsyncAction =
      AsyncAction('_HomeControllerBase.getCharacterDataWrapper');

  @override
  Future getCharacterDataWrapper() {
    return _$getCharacterDataWrapperAsyncAction
        .run(() => super.getCharacterDataWrapper());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void changeShowSearch(dynamic value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeShowSearch');
    try {
      return super.changeShowSearch(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeShowSearchIcon(dynamic value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeShowSearchIcon');
    try {
      return super.changeShowSearchIcon(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setQuery(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setQuery');
    try {
      return super.setQuery(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showSearch: ${showSearch},
characterList: ${characterList},
query: ${query},
showSearchIcon: ${showSearchIcon},
characterDataWrapper: ${characterDataWrapper},
loading: ${loading},
characterFiltereds: ${characterFiltereds}
    ''';
  }
}
