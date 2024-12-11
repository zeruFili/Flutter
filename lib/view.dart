import 'package:flutter/material.dart';

class Portifolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 300.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(
                      'images/image.jpg'), // Adjust image path as needed
                  fit: BoxFit.cover, // Adjust the image fit
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 27, 48),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Achievements',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Here are some of my notable achievements in various fields. '
                    'I am inspired by challenges and motivated by success. '
                    'Every experience is a lesson, and I am eager to learn and grow. '
                    'My journey is fueled by passion and a commitment to excellence.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.workspace_premium,
                              color: Colors.amber, size: 30),
                          SizedBox(height: 5),
                          Text('Achievement 1',
                              style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.school, color: Colors.amber, size: 30),
                          SizedBox(height: 5),
                          Text('Achievement 2',
                              style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.emoji_events,
                              color: Colors.amber, size: 30),
                          SizedBox(height: 5),
                          Text('Achievement 3',
                              style: TextStyle(color: Colors.white70)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Contact Me',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.phone, color: Colors.blue, size: 20),
                      Icon(Icons.email, color: Colors.blue, size: 20),
                      Icon(Icons.facebook, color: Colors.blue, size: 20),
                      // Icon(Icons.twitter, color: Colors.blue, size: 30),
                      // Icon(Icons.linkedin, color: Colors.blue, size: 30),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
