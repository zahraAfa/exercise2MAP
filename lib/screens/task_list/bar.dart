import 'package:flutter/material.dart';
import 'package:map_exercise2_pair/models/task.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final AppBar appBar;
  // final List<Task> _tasks;
  // Bar(this._title, this._tasks);

  // String get title => _title;
  // List<Task> get tasks => _tasks;
  const Bar({Key key, this.title, this.appBar}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: title,
    );
  }
}
