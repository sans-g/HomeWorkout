import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeworkoutapp/dummy_data/stretch.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/stretch/stretchItem.dart';

class Stretch extends StatelessWidget {
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
          "Stretch",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 350,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: STRETCH_CATEGORY
                .map((data) => StretchItem(
                      id: data.id,
                      id2: data.id2,
                      title: data.title,
                      imageUrl: data.imageUrl,
                      title2: data.title2,
                      imageUrl2: data.imageUrl2,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
