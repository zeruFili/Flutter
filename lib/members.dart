import 'package:flutter/material.dart';

class Profile {
  final String id;
  final String title;
  final String subtitle;
  final IconData trailingIcon;
  final AssetImage assetImage;
  final String description;
  final List<Map<String, dynamic>>
      achievements; // List of maps for achievements

  Profile({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.trailingIcon,
    required this.assetImage,
    required this.description,
    required this.achievements,
  });
}

final List<Profile> profiles = [
  Profile(
    id: '1',
    title: 'Graphic Designer',
    subtitle: 'Bachelor\'s Degree in Graphic Design',
    trailingIcon: Icons.design_services,
    assetImage: AssetImage('images/image1.jpg'),
    description:
        'As a Graphic Designer, I create visual content that communicates messages effectively. My experience includes branding, typography, and layout design. I focus on aesthetics and functionality to ensure that designs engage the target audience. My creativity drives projects from concept to completion, ensuring visual appeal and brand consistency.',
    achievements: [
      {'icon': Icons.check, 'title': 'Brand Identity Creation'},
      {'icon': Icons.palette, 'title': 'Visual Campaigns'},
      {'icon': Icons.edit, 'title': 'Creative Collaboration'},
    ],
  ),
  Profile(
    id: '2',
    title: 'Web Developer',
    subtitle: 'Bachelor\'s Degree in Computer Science',
    trailingIcon: Icons.attach_money,
    assetImage: AssetImage('images/image3.jpg'),
    description:
        'As a Web Developer, I focus on creating responsive, user-friendly websites that meet client needs. I specialize in frontend technologies, ensuring a seamless user experience. My skills include HTML, CSS, and JavaScript, along with frameworks such as React. I am passionate about coding and continuously improve my skills to stay updated with industry standards.',
    achievements: [
      {'icon': Icons.code, 'title': 'Frontend Dev'},
      {'icon': Icons.security, 'title': 'Implemented Security '},
      {'icon': Icons.style, 'title': 'Responsive Design'},
    ],
  ),
  Profile(
    id: '3',
    title: 'SEO Specialist',
    subtitle: 'Bachelor\'s Degree in Marketing',
    trailingIcon: Icons.trending_up,
    assetImage: AssetImage('images/image4.jpg'),
    description:
        'As an SEO Specialist, I optimize websites to improve search engine rankings. My expertise includes keyword research, on-page optimization, and link building. I analyze data to enhance visibility and drive organic traffic to sites. My strategies focus on aligning content with user intent, ensuring that businesses reach their target audience effectively.',
    achievements: [
      {'icon': Icons.analytics, 'title': 'Traffic Growth'},
      {'icon': Icons.visibility, 'title': 'SEO Audits'},
      {'icon': Icons.link, 'title': 'Backlink Strategy'},
    ],
  ),
  Profile(
    id: '4',
    title: 'Content Writer',
    subtitle: 'Bachelor\'s Degree in English Literature',
    trailingIcon: Icons.article,
    assetImage: AssetImage('images/image5.jpg'),
    description:
        'As a Content Writer, I craft engaging and informative articles tailored to target audiences. My work involves researching topics, understanding reader needs, and creating compelling narratives. I utilize SEO best practices to enhance visibility while ensuring clarity and impact. My goal is to deliver high-quality content that resonates with readers and drives engagement.',
    achievements: [
      {'icon': Icons.article, 'title': 'Published Articles'},
      {'icon': Icons.edit, 'title': 'Content Strategy'},
      {'icon': Icons.share, 'title': 'Social Media Engagement'},
    ],
  ),
  // Add more profiles as needed
];
