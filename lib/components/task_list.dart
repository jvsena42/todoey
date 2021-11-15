import 'package:flutter/material.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task("task 1", false),
    Task("task 2", true),
    Task("task 2", true),
    Task("task 2", true),
    Task("task 2", true),
    Task("task 2", true),
    Task("task 2", true),
    Task("task 2", true),
    Task("task 2", true),
    Task("task 2", true),
  ];

 /* void checkboxCallback(bool? currentState) {
    setState(() {
      isChecked = currentState ?? false;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          tasks[index].name,
          tasks[index].isCkecked,
          (bool? currentState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
