import 'package:flutter/material.dart';
import 'package:pro2/providers/counter_provider.dart';
import 'package:pro2/widgets/counter_widget.dart';
import 'package:provider/provider.dart';

import '../navigationDrawer.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/homePage';

  @override
  Widget build(BuildContext context) {
    //var counter = Provider.of<CounterProvider>();

    return new Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: navigationDrawer(),
        floatingActionButton: FloatingActionButton(
          /// Calls `context.read` instead of `context.watch` so that it does not rebuild
          /// when [Counter] changes.
          onPressed: () => context.read<CountersNotifier>().increment(),
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This is home page"),
            const Count(),
          ],
        )));
  }
}

// class Count extends StatelessWidget {
//   const Count({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(

//         /// Calls `context.watch` to make [MyHomePage] rebuild when [Counter] changes.
//         '${context.watch<CounterProvider>().count}',
//         style: Theme.of(context).textTheme.headline4);
//   }
// }
