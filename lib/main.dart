import 'package:flutter/material.dart';
import './pages/Home.dart';
import './pages/Phones.dart';
import './pages/Settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => Home(),
        "settings" : (context) => Settings(),
        "phones" : (context) => Phones(),
      },
    );
  }
}