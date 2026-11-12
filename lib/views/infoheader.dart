import 'package:flutter/material.dart';
import 'package:task_7_socmed_clone/models/userdata.dart';

class InfoHeader extends StatelessWidget {
  const InfoHeader({super.key, required this.userdata});
  final Userdata userdata;

  final TextStyle followTxtStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text('Followers'), Text('Following'), Text('Posts')]
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(userdata.account.numFollowers.toString(), style: followTxtStyle),
                Text(userdata.account.numFollowing.toString(), style: followTxtStyle),
                Text(userdata.account.numPost.toString(), style: followTxtStyle)
              ],
            )
          ],
        )
      ]
    );
  }
}