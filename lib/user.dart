import 'package:flutter/material.dart';

class User extends StatefulWidget {

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("This is User Screen",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)),
    );
  }
}