import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/task_tile.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/tasks_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              taskData.tasks[index].name,
              taskData.tasks[index].isCkecked,
              (bool? currentState) {
/*            setState(() {
                Provider.of<TaskData>(context).tasks[index].toggleDone();
              });*/
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
