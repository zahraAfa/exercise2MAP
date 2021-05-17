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
      itemCount: 3,
      itemBuilder: (context, index) => ListTile(
        title: Text('todo_title'),
        subtitle: Text('todo_subtitle'),
        trailing: CircleAvatar(
          child: Text('100'),
        ),
        onTap: () {},
      ),
      scrollDirection: Axis.vertical,
    );
  }
}
