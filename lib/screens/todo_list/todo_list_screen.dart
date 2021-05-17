import 'package:flutter/material.dart';

import 'bar.dart';
import 'body.dart';

class todoScreen extends StatefulWidget {
  @override
  _todoScreenState createState() => _todoScreenState();
}

class _todoScreenState extends State<todoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: Bar(),
        body: Body(),
      ),
    );
  }
}
