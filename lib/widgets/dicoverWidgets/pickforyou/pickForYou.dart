import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeworkoutapp/dummy_data/pickforyou.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/pickforyou/pickforyouItem.dart';

class PickForYou extends StatelessWidget {
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
          "Pick for you",
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
            children: PICKFORYOU_CATEGORY1
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
            children: PICKFORYOU_CATEGORY2
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
