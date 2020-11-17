import 'package:flutter/material.dart';

import '../navigationDrawer.dart';

class NotificationPage extends StatelessWidget {
  static const String routeName = '/notificationPage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Notifications"),
        ),
        drawer: navigationDrawer(),
        body: Center(child: Text("This is notification page")));
  }
}
