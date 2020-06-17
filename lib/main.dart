import 'package:flutter/material.dart';
import 'package:todoeyflutter/providers/task_data.dart';
import 'package:todoeyflutter/screens/tasks_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
