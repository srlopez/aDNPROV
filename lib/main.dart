import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:pro2/providers/counter_provider.dart';

import 'pages/contactPage.dart';
import 'pages/eventPage.dart';
import 'pages/homePage.dart';
import 'pages/notificationPage.dart';
import 'pages/profilePage.dart';

import 'routes/pageRoute.dart';

void main() {
  //runApp(MyApp());
  runApp(ChangeNotifierProvider<CountersNotifier>(
    create: (_) => CountersNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NavigationDrawer Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        pageRoutes.home: (context) => HomePage(),
        pageRoutes.contact: (context) => ContactPage(),
        pageRoutes.event: (context) => EventPage(),
        pageRoutes.profile: (context) => ProfilePage(),
        pageRoutes.notification: (context) => NotificationPage(),
      },
    );
  }
}
