import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,
      ),
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        title: Text('task_title'),
        onTap: () {},
        onLongPress: () {},
      ),
    );
  }
}
