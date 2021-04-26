// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_error_register.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormErrorRegister on _FormErrorRegisterBase, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_FormErrorRegisterBase.hasErrors'))
          .value;

  final _$nameAtom = Atom(name: '_FormErrorRegisterBase.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_FormErrorRegisterBase.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_FormErrorRegisterBase.password');

  @override
  String? get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String? value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$repeatPasswordAtom =
      Atom(name: '_FormErrorRegisterBase.repeatPassword');

  @override
  String? get repeatPassword {
    _$repeatPasswordAtom.reportRead();
    return super.repeatPassword;
  }

  @override
  set repeatPassword(String? value) {
    _$repeatPasswordAtom.reportWrite(value, super.repeatPassword, () {
      super.repeatPassword = value;
    });
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
password: ${password},
repeatPassword: ${repeatPassword},
hasErrors: ${hasErrors}
    ''';
  }
}
