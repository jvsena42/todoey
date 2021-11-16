import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasks = [
    Task(name: 'Task 1'),
  ];

  int get taskCount {
    return tasks.length;
  }

}