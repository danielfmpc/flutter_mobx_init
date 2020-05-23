import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_flutter/store/todo_store.dart';
part 'list_store.g.dart';

class ListStore = _ListStoreBase with _$ListStore;

abstract class _ListStoreBase with Store {
  
  @observable
  String newTodoTitle = "";

  @action
  void setNewTodoTitle(String value) => newTodoTitle = value;

  @computed
  bool get isPreenchido => newTodoTitle.isNotEmpty;

  ObservableList<TodoStore> todoList = ObservableList<TodoStore>();

  @action
  void todoListAdd(){
    todoList.insert(0, TodoStore(newTodoTitle));
    newTodoTitle = "";
  }
}