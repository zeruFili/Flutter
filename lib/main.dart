import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("i am poor"),
      backgroundColor: Colors.grey,
    ),
    body: Container(
      child: Image(
        image: AssetImage(
            'images/nationalid.png'), // Ensure the asset is correctly loaded
      ),
    ),
  )));
}
