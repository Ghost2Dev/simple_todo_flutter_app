import 'package:flutter/material.dart';

class Todo {
  static int _idCounter = 0;
  int id = _idCounter++;
  String title;
  bool isDone = false;
  Color color;

  Todo({required this.title, required this.color});
}
