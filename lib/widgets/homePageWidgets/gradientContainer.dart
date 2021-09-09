import 'package:flutter/material.dart';
import 'package:homeworkoutapp/widgets/homePageWidgets/statistics.dart';

class GradientContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.35,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue[200], Colors.blueAccent[700]],
                  end: Alignment.bottomRight,
                  begin: Alignment.topLeft)),
          child: Statistics(),
        ),
        SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
