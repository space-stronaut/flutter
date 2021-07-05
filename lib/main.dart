import 'package:flutter/material.dart';
import 'routes/home.dart';
import 'routes/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {"/": (context) => MyHome(), "/about": (context) => MyAbout()},
    );
  }
}
