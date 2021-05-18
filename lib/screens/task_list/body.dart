import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool tap = false;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey,
      ),
      itemCount: 3,
      itemBuilder: (context, index) => ListTile(
        title: Text("List items #${index + 1}"),
        onTap: () {},
        onLongPress: () {},
      ),
    );
  }
}
