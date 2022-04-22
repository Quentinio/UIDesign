import 'package:flutter/material.dart';
import 'package:uidesigns/Pages/Circle/data_viz.dart';
import 'package:uidesigns/Pages/design_page.dart';
import 'package:uidesigns/Pages/design_page3.dart';

import 'Pages/design_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

