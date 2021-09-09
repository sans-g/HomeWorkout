import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:homeworkoutapp/widgets/congratulationWidgets/weight.dart';
import 'package:homeworkoutapp/widgets/reportWidgets/title.dart';

class Weight extends StatefulWidget {
  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  var data1 = [49.0, 50.0, 90.5, 200.0, 50.0];
  bool isKg = false;
  bool isLb = true;
  Material mychart2Items() {
    return Material(
      child: Sparkline(
        data: data1,
        fillMode: FillMode.below,
        fillGradient: new LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.cyan, Colors.cyan.withOpacity(0.1)],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 240,
      child: Column(
        children: <Widget>[
          TitleWidget(
              title2: Icon(
                Icons.add,
                color: Colors.blue,
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
                        content: EnterWeight(
                          title: "Weight",
                          type1: "LB",
                          type2: "KG",
                          isLb: true,
                          isKg: false,
                          width: 150,
                        ),
                      );
                    });
              },
              title: "Weight"),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: mychart2Items(),
          ),
          TitleWidget(title2: Text("65.01 kg"), onTab: null, title: "Current"),
          TitleWidget(title2: Text("67.41 kg"), onTab: null, title: "Heaviest"),
          TitleWidget(title2: Text("60 kg"), onTab: null, title: "Lightest"),
        ],
      ),
    );
  }
}
