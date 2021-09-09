import 'package:flutter/material.dart';
import 'package:homeworkoutapp/screens/calender.dart';
import 'package:homeworkoutapp/widgets/daySelector.dart';
import 'package:homeworkoutapp/widgets/reportWidgets/title.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TitleWidget(
              title2: Text(
                "MORE",
                style: TextStyle(color: Colors.blue),
              ),
              onTab: () {
                Navigator.of(context).pushNamed(Calender.routeName);
              },
              title: "HIstory"),
          Container(
            child: DaySelectorWidget(),
          ),
          Text(
            "RECORDS",
            style: TextStyle(color: Colors.blue, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
