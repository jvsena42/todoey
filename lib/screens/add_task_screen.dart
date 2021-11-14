import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white30, width: 2.0),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.lightGreenAccent, width: 2.0),
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          ElevatedButton(
            onPressed: () {},
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
