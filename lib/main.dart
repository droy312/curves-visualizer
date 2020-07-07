import 'package:curves_visualiser/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curves Visualiser',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}