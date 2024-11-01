import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, // Correctly set mainAxisAlignment

                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("images/nationalid.png"),
                  ),
                  Text(
                    'Zerubabel Filmon ',
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Flutter Devleoper today ',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                      fontFamily: 'Source San 3',
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    // Padding around the container
                    margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 25.0), // Corrected margin syntax
                    child: ListTile(
                      leading: Icon(
                        Icons.add_ic_call,
                        size: 20.0, // Size of the icon
                        color: Colors
                            .teal, // Changed to black for visibility against white background
                      ),
                      title: Text(
                        '+251 951383935',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors
                              .black, // Changed to black for visibility against white background
                          fontFamily:
                              'Source Sans Pro', // Corrected font family name
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    color: Colors.white, // Background color of the container
                    // Padding around the container
                    margin: EdgeInsets.symmetric(
                      // Margin around the container
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        size: 20.0, // Size of the icon
                        color: Colors.teal, // Icon color
                      ),
                      title: Text(
                        'dagilat@gmail.com',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black, // Text color
                          fontFamily: 'Source Sans Pro', // Font family
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ))));
}
