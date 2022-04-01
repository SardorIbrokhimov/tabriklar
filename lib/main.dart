import 'package:flutter/material.dart';

import 'pages/about.dart';
import 'pages/home_page.dart';
import 'pages/page1.dart';
import 'pages/page2.dart';
import 'pages/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        Page1.id: (context) => Page1(),
        Page2.id: (context) => Page2(),
        Page3.id: (context) => Page3(),
        About.id: (context) => About(),
      },
    );
  }
}
