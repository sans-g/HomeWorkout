import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  bool expended = true;

  Widget build(BuildContext context) {
    return Container(
      height: expended?200:80,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "BMI(Kg/m²)",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic),
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      expended = !expended;
                    });
                  },
                  child: Text(
                    expended ? "HIDE" : "SHOW",
                    style: TextStyle(
                        color: Colors.blue,
                        fontStyle: FontStyle.italic,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                )
              ],
            ),
            expended
                ? Container(
                    height: 120,
                    color: Colors.white,
                    child: Center(
                      child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialog(
                                  content: Column(
                                    children: <Widget>[

                                    ],
                                  ),
                                );
                              });
                        },
                        child: Text(
                          "Tap here to input your height",
                          style: TextStyle(
                              color: Colors.blue,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                  )
                : Container(
                    height: 1,
                  ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Divider(
                height: 4,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
