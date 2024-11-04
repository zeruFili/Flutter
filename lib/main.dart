import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('DAgilat faya'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftNumber = 1;
  var rightNumber = 1;

  void rollRDice() {
    setState(() {
      rightNumber = Random().nextInt(6) + 1;
      leftNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: rollRDice,
              child: Padding(
                padding: EdgeInsets.all(16.0), // Add padding here
                child: Image.asset('images/dice$leftNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: rollRDice,
              child: Padding(
                padding: EdgeInsets.all(16.0), // Add padding here
                child: Image.asset('images/dice$rightNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
