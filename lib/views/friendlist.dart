import 'package:flutter/material.dart';
import 'package:task_7_socmed_clone/models/friend.dart';

import 'package:task_7_socmed_clone/models/userdata.dart';

class Friendlist extends StatelessWidget {
  const Friendlist({super.key, required this.userdata});

  final Userdata userdata;

  final TextStyle followTxtStyle = const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold
  );

  Widget friend(Friend friend) => Card(
    child: Column(
      children: [
        Expanded(
          child: 
            Image.asset(
              friend.img,
              width: double.infinity,
              fit: BoxFit.cover
            ),
        ),
          Padding (
            padding: const EdgeInsets.all(8.0),
            child: Text(friend.name, style: followTxtStyle)
          )
      ]
    )
  );

  Widget friendListGrid() => GridView.builder(
    shrinkWrap: true,
    physics: BouncingScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      mainAxisExtent: 180,
    ),
    itemCount: userdata.friendlist.length,
    itemBuilder: (context, index) => friend(userdata.friendlist[index]),
  );

  @override
  Widget build(BuildContext context) {
    return Column (
      children: [

        const SizedBox(height: 20),

        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(children: [Text('Friends', style: followTxtStyle)],)
        ),

        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(children: [Text('${userdata.friendlist.length}')],)
        ),

        const SizedBox(height: 20),
        SizedBox(
          height: 400,
          child: friendListGrid()
        ),

        SizedBox(
          height: 20,
          child: Container(
            color: Colors.grey[300],
          )
        )


      ],
    );
  }

  
}