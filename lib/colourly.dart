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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.purple[900]!, // from-purple-900
              Colors.grey.shade900, // via-slate-900
              // to-slate-950
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
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
                        "Dev\nzerubabel",
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
                    backgroundImage: AssetImage('images/image.jpg'),
                  ),
                ],
              ),
            ),
            // Qualifications Section
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 27, 48),
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
                            Icon(Icons.design_services, color: Colors.white),
                            Text('Graphic Designer',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.code, color: Colors.white),
                            Text('Web Developer',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.language, color: Colors.white),
                            Text('SEO Specialist',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.article, color: Colors.white),
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
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: profile.assetImage,
                        ),
                        title: Text(profile.title),
                        subtitle: Text(profile.subtitle),
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
