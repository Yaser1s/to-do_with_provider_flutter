import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkBoxChange;
  final void Function() listTitleDelete;
  const TaskList({super.key, 
    required this.isChecked,
    required this.taskTitle,
    required this.checkBoxChange,
    required this.listTitleDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
          activeColor: Colors.teal[400],
          value: isChecked,
          onChanged: checkBoxChange),
      onLongPress: listTitleDelete,
    );
  }
}
