import 'package:flutter/material.dart';
import 'package:map_exercise2_pair/models/task.dart';
import 'package:map_exercise2_pair/screens/task_list/body.dart';
import 'package:map_exercise2_pair/screens/task_list/float.dart';

import 'bar.dart';

// class TaskScreen extends StatefulWidget {
//   final String _title;
//   final List<Task> _tasks;

//   TaskScreen(this._title, this._tasks);

//   @override
//   _TaskScreenState createState() => _TaskScreenState();
// }

// class _TaskScreenState extends State<TaskScreen> {
//   String get title => widget._title;
//   List<Task> get tasks => widget._tasks;
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () => Future.value(false),
//       child: SafeArea(
//         child: Scaffold(
//           appBar: Bar(
//             title: Text('Task List of $title'),
//             appBar: AppBar(),
//           ),
//           body: Body(),
//           floatingActionButton: Float(),
//         ),
//       ),
//     );
//   }
// }

class TaskListScreen extends StatefulWidget {
  final String _title;
  final List<Task> _tasks;

  TaskListScreen(this._title, this._tasks);

  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  String get title => widget._title;

  List<Task> get tasks => widget._tasks;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar:
            // Bar.Bar(),
            AppBar(
          leading: Container(),
          title: Text('Task list of $title'),
          centerTitle: true,
        ),
        body: _TaskListView(tasks),
        floatingActionButton:
            // Float.Float()
            Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton.extended(
              heroTag: null,
              onPressed: () => Navigator.pop(context, tasks),
              label: Text('Update'),
              icon: Icon(Icons.check_circle),
            ),
            FloatingActionButton.extended(
              heroTag: null,
              onPressed: () => Navigator.pop(context, null),
              label: Text('Cancel'),
              icon: Icon(Icons.cancel),
            ),
          ],
        ),
      ),
    );
  }
}

class _TaskListView extends StatefulWidget {
  final List<Task> _tasks;

  _TaskListView(this._tasks);

  List<Task> get tasks => _tasks;

  @override
  _TaskListViewState createState() => _TaskListViewState();
}

class _TaskListViewState extends State<_TaskListView> {
  List<Task> get tasks => widget.tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: tasks.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
        title: Text(
          tasks[index].title,
          style: TextStyle(
            decoration:
                tasks[index].completed ? TextDecoration.lineThrough : null,
          ),
        ),
        onTap: () =>
            setState(() => tasks[index].completed = !tasks[index].completed),
        onLongPress: () => setState(() => tasks.remove(tasks[index])),
      ),
    );
  }
}
