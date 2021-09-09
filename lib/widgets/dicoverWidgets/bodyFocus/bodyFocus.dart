import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeworkoutapp/dummy_data/bodyfocus.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/bodyFocus/bodyfocusItem.dart';

class BodyFocus extends StatelessWidget {
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
          "Body focus",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 350,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 3 / 2.3),
            children: BODYFOCUS_CATEGORY
                .map((data) => BodyFocusItem(
                      title: data.title,
                      imageUrl: data.imageUrl,
                      id: data.id,
                    ))
                .toList(),
          ),
        ),
      ],
    );
  }
}
