import 'package:flutter/material.dart';
import 'package:pro2/providers/counter_provider.dart';
import 'package:pro2/widgets/counter_widget.dart';
import 'package:provider/provider.dart';

import '../navigationDrawer.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = '/profilePage';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("My Profile"),
        ),
        drawer: navigationDrawer(),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is Profile page"),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: TextField(
                onChanged: (text) =>
                    context.read<CountersNotifier>().nombrar(text),
              ),
            ),
            const Count(),
          ],
        )));
  }
}
