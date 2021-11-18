import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:todoey/utils/constants.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    String newTaskTitle = "";

    return Container(
      padding: EdgeInsets.all(
        20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: kGreen,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            cursorColor: kGreen,
            decoration: kInputDecoration,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: Text('Add'),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(kGreen),
            ),
          ),
        ],
      ),
    );
  }
}
