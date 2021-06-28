import 'package:flutter/material.dart';

class Cart extends StatefulWidget {

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("This is Shopping Screen",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)),
    );
  }
}