import 'package:flutter/material.dart';
import 'package:pro2/providers/counter_provider.dart';
import 'package:provider/provider.dart';

class Count extends StatelessWidget {
  const Count({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Otro acceso a proveedor
    var counter = Provider.of<CountersNotifier>(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${context.watch<CountersNotifier>().name} ',
            style: Theme.of(context).textTheme.headline6),
        Text('"${context.watch<CountersNotifier>().value}"',
            style: Theme.of(context).textTheme.headline5),
      ],
    );
  }
}
