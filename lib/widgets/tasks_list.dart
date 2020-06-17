import 'package:flutter/material.dart';
import 'package:todoeyflutter/providers/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
            itemCount: taskData.tasks.length,
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallback: (checkBoxState) {
                  taskData.updateTasks(task);
                },
                longPressCalback: () {
                  taskData.deleteTask(task);
                },
              );
            });
      },
    );
  }
}
