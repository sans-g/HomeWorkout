import 'package:flutter/material.dart';
import 'package:homeworkoutapp/widgets/congratulationWidgets/weight.dart';
import 'package:homeworkoutapp/widgets/reportWidgets/title.dart';

class BMIReport extends StatefulWidget {
  @override
  _BMIReportState createState() => _BMIReportState();
}

class _BMIReportState extends State<BMIReport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TitleWidget(
            title: "BMI(kg/m2)",
            title2: Text(
              "EDIT",
              style: TextStyle(color: Colors.blue),
            ),
            onTab: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text("Current Weight"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("CANCEL"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        FlatButton(
                          child: Text("SAVE"),
                          onPressed: () {
                            setState(() {});
                          },
                        ),
                      ],
                      content: Column(
                        children: <Widget>[
                          EnterWeight(
                            title: "Weight",
                            type1: "LB",
                            type2: "KG",
                            isLb: true,
                            isKg: false,
                            width: 150,
                          ),
                          EnterWeight(
                            title: "Height",
                            type1: "CM",
                            type2: "IN",
                            isLb: true,
                            isKg: false,
                            width: 150,
                          ),
                        ],
                      ),
                    );
                  });
            },
          ),
          Divider(
            height: 3,
            color: Colors.grey,
          ),
          TitleWidget(
            title: "Height",
            title2: Text(
              "EDIT",
              style: TextStyle(color: Colors.blue),
            ),
            onTab: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text("Current Weight"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("CANCEL"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        FlatButton(
                          child: Text("SAVE"),
                          onPressed: () {
                            setState(() {});
                          },
                        ),
                      ],
                      content: Column(
                        children: <Widget>[
                          EnterWeight(
                            title: "Weight",
                            type1: "LB",
                            type2: "KG",
                            isLb: true,
                            isKg: false,
                            width: 150,
                          ),
                          EnterWeight(
                            title: "Height",
                            type1: "CM",
                            type2: "IN",
                            isLb: true,
                            isKg: false,
                            width: 150,
                          ),
                        ],
                      ),
                    );
                  });
            },
          ),
          TitleWidget(
            title: "Current",
            title2: Text(
              "0.0 CM",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            onTab: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text("Current Weight"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("CANCEL"),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        FlatButton(
                          child: Text("SAVE"),
                          onPressed: () {
                            setState(() {});
                          },
                        ),
                      ],
                      content: Container(
                        height: 100,
                        child: ListView(
                          children: <Widget>[
                            EnterWeight(
                              title: "Weight",
                              type1: "LB",
                              type2: "KG",
                              isLb: true,
                              isKg: false,
                              width: 150,
                            ),
                            EnterWeight(
                              title: "Height",
                              type1: "CM",
                              type2: "IN",
                              isLb: true,
                              isKg: false,
                              width: 150,
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
