import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
part 'list_store.g.dart';

class ListStore = _ListStoreBase with _$ListStore;

abstract class _ListStoreBase with Store {
  
  @observable
  String newTodoTitle = "";

  @action
  void setNewTodoTitle(String value) => newTodoTitle = value;

  @computed
  bool get isPreenchido => newTodoTitle.isNotEmpty;

  ObservableList<String> todoList = ObservableList<String>();

  @action
  void todoListAdd(){
    todoList.add(newTodoTitle);
  }
}