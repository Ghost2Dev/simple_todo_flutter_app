import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/todo.dart';
import '../services/todocontroller.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.todo});
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: UniqueKey(),
        onDismissed: (direction) =>
            context.read<TodoController>().deleteTodo(todo.id),
        child: Card(
          color: todo.color,
          child: ListTile(
            onTap: () => context.read<TodoController>().completeTodo(todo),
            title: Text(todo.title),
            trailing: Checkbox(
              value: todo.isDone,
              onChanged: null,
            ),
          ),
        ));
  }
}
