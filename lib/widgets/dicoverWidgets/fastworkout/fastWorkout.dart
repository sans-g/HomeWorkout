import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeworkoutapp/dummy_data/fastWorkout.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/pickforyou/pickforyouItem.dart';

class FastWorkout extends StatelessWidget {
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
          "Fast Workout",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 106,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: FASTWORKOUT_CATEGORY1
                .map((data) => PickForYouItem(
                      id: data.id,
                      title: data.title,
                      imageUrl: data.imageUrl,
                      duration: data.duration,
                      category: data.category,
                    ))
                .toList(),
          ),
        ),
        Container(
          height: 106,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: FASTWORKOUT_CATEGORY2
                .map((data) => PickForYouItem(
                      id: data.id,
                      title: data.title,
                      imageUrl: data.imageUrl,
                      duration: data.duration,
                      category: data.category,
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
