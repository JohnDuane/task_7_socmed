import 'package:flutter/material.dart';
import 'package:task_7_socmed_clone/models/userdata.dart';
import 'package:task_7_socmed_clone/views/friendlist.dart';
import 'package:task_7_socmed_clone/views/infoheader.dart';
import 'package:task_7_socmed_clone/views/mainheader.dart';
import 'package:task_7_socmed_clone/views/postlist.dart';

class LandingPage extends StatefulWidget {
  final String username;

  const LandingPage({
    super.key,
    required this.username,
  });

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final Userdata userdata = Userdata();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TIKTIK'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MainHeader(userdata: userdata),

            SizedBox(height: 25),

            InfoHeader(userdata: userdata),

            SizedBox(height: 15),

            Friendlist(userdata: userdata),

            SizedBox(height: 15 ),

            PostList(userdata: userdata)



          ],
        )
      )
      );
  }
}