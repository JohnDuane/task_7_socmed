import 'package:flutter/material.dart';
import 'package:task_7_socmed_clone/models/userdata.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key, required this.userdata});

  final Userdata userdata;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage('assets/profile/profile.jpeg'),
          radius: 50,
        ),

        SizedBox(height: 10),

        Text(
          userdata.account.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 2
          ),
        ),

        SizedBox(height: 3),

        Text(
          userdata.account.email,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey
          ),
        )
      ]
    );
  }
}