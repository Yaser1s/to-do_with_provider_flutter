import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/task_data.dart';
import 'package:flutter_application_1/widgets/task_list.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              return TaskList(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkBoxChange: (newValue) {
                  taskData.updateTask(taskData.tasks[index]);
                },
                listTitleDelete: () {
                  taskData.deleteTask(taskData.tasks[index]);
                },
              );
            });
      },
    );
  }
}
