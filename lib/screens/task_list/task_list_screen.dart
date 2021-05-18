import 'package:flutter/material.dart';
import 'package:map_exercise2_pair/screens/task_list/body.dart';
import 'package:map_exercise2_pair/screens/task_list/float.dart';

import 'bar.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Bar(),
        body: Body(),
        floatingActionButton: Float(),
      ),
    );
  }
}
