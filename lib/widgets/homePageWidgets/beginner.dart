import 'package:flutter/material.dart';
import 'package:homeworkoutapp/dummy_data/beginner_exerscise.dart';

import 'categoryItem.dart';

class Beginner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 15),
          child: Text(
            "BEGINNER",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: BEGINNER_CATEGORY
                  .map(
                    (catData) => CategoryItem(
                      id: catData.id,
                      title: catData.title,
                      imageUrl: catData.url,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
