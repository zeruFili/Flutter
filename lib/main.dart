import 'package:flutter/material.dart';
import 'members.dart';
import 'view.dart';
// import 'view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        child: Column(
          children: [
            Container(
              height: 150.0,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Developer Info
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Zemenu \nSolution",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0, // Adjust size as needed
                          fontFamily: 'YujiMai',
                          fontWeight: FontWeight.bold,
                          foreground: Paint()
                            ..shader = LinearGradient(
                              colors: <Color>[
                                Colors.purple.shade400,
                                Colors.pink.shade400,
                              ],
                            ).createShader(
                                Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.thumb_up, size: 25, color: Colors.blue),
                          SizedBox(width: 10),
                          Icon(Icons.check_circle,
                              size: 25, color: Colors.green),
                          SizedBox(width: 10),
                          Icon(Icons.emoji_events,
                              size: 25, color: Colors.amber),
                          SizedBox(width: 10),
                          Icon(Icons.favorite, size: 25, color: Colors.red),
                          SizedBox(width: 10),
                          Icon(Icons.star_border, size: 25, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                  // Profile Image
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/solution.jpg'),
                  ),
                ],
              ),
            ),
            // Qualifications Section
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(
                    255, 1, 27, 48), // Purple color with 30% opacity
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              height: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      'Qualifications',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.design_services, color: Colors.amber),
                            Text('Graphic Designer',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.code, color: Colors.amber),
                            Text('Web Developer',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.language, color: Colors.amber),
                            Text('SEO Specialist',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.article, color: Colors.amber),
                            Text('Content Writer',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Members",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 15, left: 5),
                      height: 1,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 25.0),
                itemCount: profiles.length,
                itemBuilder: (context, index) {
                  final profile = profiles[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Portfolio(
                                profileId: profile.id); // Pass the profile ID
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: profile.assetImage,
                        ),
                        title: Text(
                          profile.title,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 12, 12, 12),
                            fontSize: 18.0, // Adjust the font size as needed
                            fontWeight:
                                FontWeight.bold, // Optional: make the text bold
                          ),
                        ),
                        subtitle: Text(
                          profile.subtitle,
                          style: TextStyle(
                            color: const Color.fromARGB(255, 181, 180, 180),
                            fontSize: 18.0, // Adjust the font size as needed
                            fontWeight:
                                FontWeight.bold, // Optional: make the text bold
                          ),
                        ),
                        trailing: Icon(
                          profile.trailingIcon,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
