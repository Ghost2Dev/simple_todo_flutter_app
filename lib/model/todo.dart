class Todo {
  static int _idCounter = 0;
  int id = _idCounter++;
  String title;
  bool isDone = false;

  Todo({required this.title});
}

