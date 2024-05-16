import 'package:flutter/material.dart';
import 'package:simple_todo_flutter_app/model/todo.dart';

class TodoController extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  completeTodo(Todo todo) {
    final element = _todos.where((element) => element.id == todo.id).first;
    element.isDone = !element.isDone;
    notifyListeners();
  }

  deleteTodo(int id) {
    _todos.removeWhere((element) => element.id == id);
    notifyListeners();
  }
}
