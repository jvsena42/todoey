import 'package:flutter/material.dart';
import 'package:todoey/utils/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function(bool?) checkboxCallback;
  final Function() longPressCallback;

  TaskTile(this.title, this.isChecked, this.checkboxCallback,
      this.longPressCallback);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      minLeadingWidth: 200,
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: kGreenAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
