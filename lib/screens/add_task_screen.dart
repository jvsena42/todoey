import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todoey/utils/constants.dart';

class AddTaskScreen extends StatelessWidget {

  final Function onPress;

  AddTaskScreen(this.onPress);

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
              color: Colors.lightGreen,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            cursorColor: Colors.lightGreen,
            decoration: kDecoration,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(
            height: 8.0,
          ),
          ElevatedButton(
            onPressed: () {
              onPress(newTaskTitle);
            },
            child: Text('Add'),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.lightGreen),
            ),
          ),
        ],
      ),
    );
  }
}
