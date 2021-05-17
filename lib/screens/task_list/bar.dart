import 'package:flutter/material.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    AppBar(
      centerTitle: true,
      title: Text('Task list of MAP Project'),
    );
  }
}
