import 'package:flutter/material.dart';
import 'package:simple_todo_flutter_app/model/todo.dart';

class TodoController extends ChangeNotifier {
  List<Todo> _todos = [];

  List<Todo> get todos => _todos;

  addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  completeTodo(int id) {
    _todos[id].isDone = !_todos[id].isDone;
    notifyListeners();
  }

  deleteTodo(int id) {
    _todos.removeAt(id);
    notifyListeners();
  }
}
