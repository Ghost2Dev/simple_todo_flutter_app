import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/todo.dart';
import '../services/todocontroller.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.todo});
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(todo.title),
        trailing: Checkbox(
          value: todo.isDone,
          onChanged: (value) {
            context.read<TodoController>().completeTodo(todo.id);
          },
        ),
      ),
    );
  }
}
