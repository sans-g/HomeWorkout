import 'package:flutter/material.dart';
import 'package:homeworkoutapp/dummy_data/challenge.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/challenge/challengeItem.dart';

class Challenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 30,
        ),
        Text(
          "Challenge",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: CHALLENGE_CATEGORY
                .map((data) => ChallengeItem(
                      title: data.title,
                      id: data.id,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
