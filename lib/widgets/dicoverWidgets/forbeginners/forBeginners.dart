import 'package:flutter/material.dart';
import 'package:homeworkoutapp/dummy_data/forbeginners.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/forbeginners/forbeginnersItem.dart';

class ForBeginners extends StatelessWidget {
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
          "For beginners",
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
            children: FORBEGINNERS_CATEGORY
                .map((data) => ForBeginnersItem(
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
