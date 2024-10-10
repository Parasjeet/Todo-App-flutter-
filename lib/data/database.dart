import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  final _myBox = Hive.box('mybox');
  List todoList = [];

  // Initial data setup
  void createInitialData() {
    todoList = [
      ["6", false],
      ["Do Exercise", false],
    ];
  }

  // Load data from the Hive box
  void loadData() {
    todoList = _myBox.get("TODOLIST") ?? [];
  }

  // Update the Hive box with the current todo list
  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}
