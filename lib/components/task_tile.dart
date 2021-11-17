import 'package:flutter/material.dart';

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
      title: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightGreenAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
