import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData  with ChangeNotifier, DiagnosticableTreeMixin {

  List<Task> _tasks = [];

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    Task task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
      task.toggleDone();
      notifyListeners();
  }
  void deleteTask(Task task) {
      _tasks.remove(task);
      notifyListeners();
  }

  UnmodifiableListView<Task> get tasks => UnmodifiableListView(_tasks);
}