import 'package:flutter/material.dart';
import 'package:map_exercise2_pair/screens/task_list/task_list_screen.dart';
import 'package:map_exercise2_pair/screens/todo_list/todo_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise 2',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: TaskScreen(),
    );
  }
}
