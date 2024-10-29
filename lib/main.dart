import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Correctly set mainAxisAlignment
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: double.infinity,
                    width: 100.0,
                    color: Colors.red,
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 200.0, horizontal: 0.0),
                    child: Column(
                      children: [
                        Container(
                          height: 100.0,
                          width: 100.0,
                          color: Colors
                              .yellow, // Use Colors.yellow instead of Color(yellow)
                        ),
                        Container(
                          height: 100.0,
                          width: 100.0,
                          color: Colors
                              .green, // Use Colors.yellow instead of Color(yellow)
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: 100.0,
                    color: Colors.lightBlue,
                  )
                ],
              ),
            ),
          ))));
}
