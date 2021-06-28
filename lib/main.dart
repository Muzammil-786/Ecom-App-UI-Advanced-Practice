import 'package:flutter/material.dart';
import 'package:muzammil_assignment/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}