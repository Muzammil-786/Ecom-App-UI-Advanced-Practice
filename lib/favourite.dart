import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("This is Favourite Screen",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),)),
    );
  }
}