import 'package:flutter/material.dart';
import 'members.dart'; // Ensure this is the correct path to your profiles.

class Portfolio extends StatelessWidget {
  final String profileId; // Parameter for profile ID

  Portfolio({required this.profileId}); // Constructor to accept profileId

  @override
  Widget build(BuildContext context) {
    // Find the profile based on the passed profileId
    final profile = profiles.firstWhere(
      (p) => p.id == profileId,
      orElse: () => Profile(
        id: '0', // Default ID if not found
        title: 'Unknown Profile',
        subtitle: '',
        trailingIcon: Icons.error,
        assetImage: AssetImage('images/default.jpg'), // Fallback image
        description: 'No description available.',
        achievements: [],
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Column(
            mainAxisSize: MainAxisSize.max, // Changed to max
            children: [
              // Image Container
              Container(
                height: 300.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: profile.assetImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Achievements Container
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
                      '${profile.title} Achievements', // Dynamic title
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      profile.description,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 20),
                    // Display achievements
                    // Display achievements in a horizontal row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: profile.achievements.map<Widget>((achievement) {
                        return AchievementItem(
                          icon: achievement['icon'],
                          title: achievement['title'],
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              // Contact Me Section
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
                        Icon(Icons.phone, color: Colors.amber, size: 20),
                        Icon(Icons.email, color: Colors.amber, size: 20),
                        Icon(Icons.facebook, color: Colors.amber, size: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AchievementItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const AchievementItem({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.amber, size: 30),
        SizedBox(height: 5),
        Text(title, style: TextStyle(color: Colors.white70)),
      ],
    );
  }
}
