import 'package:flutter/material.dart';
class Favourite extends StatefulWidget {
  

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite")),
      body: Center(child: Text("Favourite")),
    );
  }
}