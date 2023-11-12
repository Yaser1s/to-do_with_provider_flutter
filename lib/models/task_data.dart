import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: "Go gym"),
    Task(name: "Go mom"),
    Task(name: "Repair the car"),
    Task(name: "Shawar")
  ];

  void addNewTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
