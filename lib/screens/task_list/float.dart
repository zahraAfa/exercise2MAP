import 'package:flutter/material.dart';
import 'package:map_exercise2_pair/models/task.dart';

class Float extends StatefulWidget {
  @override
  _FloatState createState() => _FloatState();
}

class _FloatState extends State<Float> {
  get tasks => null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () => Navigator.pop(context, tasks),
          icon: Icon(Icons.check_circle),
          label: Text('Update'),
        ),
        FloatingActionButton.extended(
          heroTag: null,
          onPressed: () => Navigator.pop(context, null),
          icon: Icon(Icons.cancel),
          label: Text('Cancel'),
        ),
      ],
    );
  }
}
