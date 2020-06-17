import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/tasks.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Tasks> _tasks = [
    Tasks(name: 'buy egg'),
    Tasks(name: 'buy milk'),
  ];

  int get tasksCount {
    return _tasks.length;
  }

  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final task = Tasks(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTasks(Tasks task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Tasks task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
