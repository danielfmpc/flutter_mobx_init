// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListStore on _ListStoreBase, Store {
  Computed<bool> _$isPreenchidoComputed;

  @override
  bool get isPreenchido =>
      (_$isPreenchidoComputed ??= Computed<bool>(() => super.isPreenchido,
              name: '_ListStoreBase.isPreenchido'))
          .value;

  final _$newTodoTitleAtom = Atom(name: '_ListStoreBase.newTodoTitle');

  @override
  String get newTodoTitle {
    _$newTodoTitleAtom.reportRead();
    return super.newTodoTitle;
  }

  @override
  set newTodoTitle(String value) {
    _$newTodoTitleAtom.reportWrite(value, super.newTodoTitle, () {
      super.newTodoTitle = value;
    });
  }

  final _$_ListStoreBaseActionController =
      ActionController(name: '_ListStoreBase');

  @override
  void setNewTodoTitle(String value) {
    final _$actionInfo = _$_ListStoreBaseActionController.startAction(
        name: '_ListStoreBase.setNewTodoTitle');
    try {
      return super.setNewTodoTitle(value);
    } finally {
      _$_ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void todoListAdd() {
    final _$actionInfo = _$_ListStoreBaseActionController.startAction(
        name: '_ListStoreBase.todoListAdd');
    try {
      return super.todoListAdd();
    } finally {
      _$_ListStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newTodoTitle: ${newTodoTitle},
isPreenchido: ${isPreenchido}
    ''';
  }
}
