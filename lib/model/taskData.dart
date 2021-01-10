import 'dart:collection';
import 'package:flutter/material.dart';
import "package:todoey/model/tasks.dart";

class TasksManager extends ChangeNotifier {
  List<Tasks> _tasksList = [
    // Tasks(name: "Read flutter"),
    // Tasks(name: "Solve aptitude"),
    // Tasks(name: "Do exercise"),
    // Tasks(name: "Talk with grandma")
  ];

  UnmodifiableListView<Tasks> get tasksList {
    return UnmodifiableListView(_tasksList);
  }

  int get taskLength {
    return _tasksList.length;
  }

  void tasksAdd(String task) {
    _tasksList.add(Tasks(name: task));
    notifyListeners();
  }

  void tasksRemove(Tasks task) {
    _tasksList.remove(task);
    notifyListeners();
  }

  void updateTask(Tasks task) {
    task.toggleDone();
    notifyListeners();
  }
}
