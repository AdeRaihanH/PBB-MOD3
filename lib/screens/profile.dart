import 'package:flutter/material.dart';


class ProfilePage extends StatefulWidget {
  final VoidCallback? onHomeTap;


  const ProfilePage({super.key, this.onHomeTap});


  @override
  State<ProfilePage> createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {
  final List<Map<String, String>> teamMembers = [
    {'Nama': 'Rayvan Bayu Abhinowo', 'NIM': '21120123130053'},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color.fromARGB(255, 13, 105, 225),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: widget.onHomeTap,
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: FractionallySizedBox(
              alignment: Alignment.topCenter,
              heightFactor: 0.5,
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                    image: NetworkImage(
                      'https://i.pinimg.com/1200x/b1/38/b5/b138b5213ee781543c0f83d704fb7476.jpg',
                    ),
                  ),
                  color: const Color.fromARGB(255, 255, 252, 252).withValues(alpha: 128),
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://avatars.githubusercontent.com/rayvanbayu77',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                for (var member in teamMembers)
                  Column(
                    children: [
                      Text(
                        member['Nama'] ?? 'No Name',
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        member['NIM'] ?? 'No NIM',
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
