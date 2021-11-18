import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components/images.dart';
import 'package:todoey/components/task_list.dart';
import 'package:todoey/models/tasks_data.dart';
import 'package:todoey/utils/constants.dart';

import 'add_task_screen.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: kBottomSheetRadius,
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Colors.lightGreen,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageCircle(),
                SizedBox(
                  height: 10.0,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText('Todoey',
                        textStyle: TextStyle(
                          color: kWhite,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w700,
                        ),
                        speed: const Duration(milliseconds: 300)),
                  ],
                  totalRepeatCount: 1,
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              constraints: BoxConstraints(minHeight: 300),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: kBoxDecoration,
              child: TasksList(),
            ),
          ),
        ],
      ),
    );
  }
}
