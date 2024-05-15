import 'package:flutter/material.dart';
import 'components/titlerow.dart';
import 'components/tododialog.dart';
import 'components/todolist.dart';
import 'services/todocontroller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TodoController controller = TodoController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          const TitleRow(),
          Container(
            width: size.width,
            height: size.height / 1.3,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const TodoList(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => addTodo(), child: const Icon(Icons.add)),
    ));
  }

  void addTodo() {
    showDialog(context: context, builder: (context) => TodoDialog(controller: controller));
  }
}
