// profile.dart
import 'package:flutter/material.dart';

class Profile {
  final String title;
  final String subtitle;
  final IconData trailingIcon;
  final AssetImage assetImage;

  Profile({
    required this.title,
    required this.subtitle,
    required this.trailingIcon,
    required this.assetImage,
  });
}

final List<Profile> profiles = [
  Profile(
    title: 'Project Manager',
    subtitle: r'$80',
    trailingIcon: Icons.work,
    assetImage: AssetImage('images/image2.jpg'),
  ),
  Profile(
    title: 'Web Developer',
    subtitle: r'$30',
    trailingIcon: Icons.attach_money,
    assetImage: AssetImage('images/image3.jpg'),
  ),
  Profile(
    title: 'Electronics Specialist',
    subtitle: r'$40',
    trailingIcon: Icons.business_center,
    assetImage: AssetImage('images/image4.jpg'),
  ),
  Profile(
    title: 'Data Analyst',
    subtitle: r'$20',
    trailingIcon: Icons.data_usage,
    assetImage: AssetImage('images/image5.jpg'),
  ),
  // Add more profiles as needed
];
