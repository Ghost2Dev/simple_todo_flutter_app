import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/todocontroller.dart';
import 'todoitem.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});
  

  @override
  Widget build(BuildContext context) {
    final TodoController controller = context.watch<TodoController>();
    return ListView.builder(
      itemCount: controller.todos.length,
      itemBuilder: (context, index) {
        return TodoItem(todo: controller.todos[index]);
      },
    );
  }
}
