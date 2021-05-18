// import 'package:flutter/material.dart';

import '../../models/todo.dart';
import '../../models/task.dart';
import '../../models/mock_todos.dart';
import 'package:flutter/material.dart' hide Action;
import '../task_list/task_list_screen.dart' as TaskListScreen;

// class Body extends StatefulWidget {
//   @override
//   _BodyState createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       separatorBuilder: (context, index) => Divider(
//         color: Colors.grey,
//       ),
//       itemCount: 3,
//       itemBuilder: (context, index) => ListTile(
//         title: Text('todo_title'),
//         subtitle: Text('todo_subtitle'),
//         trailing: CircleAvatar(
//           child: Text('100'),
//         ),
//         onTap: () {},
//       ),
//       scrollDirection: Axis.vertical,
//     );
//   }
// }

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: myTodoList.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,
      ),
      itemBuilder: (context, index) => _TodoListTile(myTodoList[index]),
    );
  }
}

class _TodoListTile extends StatefulWidget {
  final Todo _data;

  _TodoListTile(this._data);

  String get title => _data.title;
  List<Task> get tasks => _data.tasks;
  double get percent => _data.percent;

  set tasks(List<Task> newValue) => _data.tasks = newValue;

  @override
  _TodoListTileState createState() => _TodoListTileState();
}

class _TodoListTileState extends State<_TodoListTile> {
  String get title => widget.title;
  List<Task> get tasks => widget.tasks;
  double get percent => widget.percent;
  set tasks(List<Task> newValue) => widget.tasks = newValue;

  void _navigate() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TaskListScreen.TaskListScreen(
            title, tasks.map((element) => Task.copy(element)).toList()),
      ),
    );
    if (result != null) {
      setState(() => tasks = result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      subtitle: Text('This list has ${tasks.length} task(s)'),
      trailing: CircleAvatar(
        child: Text('${(tasks.length > 0) ? percent.round() : '-'}'),
      ),
      onTap: _navigate,
    );
  }
}
