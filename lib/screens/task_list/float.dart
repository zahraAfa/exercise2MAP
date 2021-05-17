import 'package:flutter/material.dart';

class Float extends StatefulWidget {
  @override
  _FloatState createState() => _FloatState();
}

class _FloatState extends State<Float> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.check_circle),
          label: Text('Update'),
        ),
        FloatingActionButton.extended(
          onPressed: () {},
          icon: Icon(Icons.cancel),
          label: Text('Cancel'),
        )
      ],
    );
  }
}
