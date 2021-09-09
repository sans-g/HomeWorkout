import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SetDuration extends StatefulWidget {
   int duration ;
  SetDuration(this.duration);
  @override
  _SetDurationState createState() => _SetDurationState();
}

class _SetDurationState extends State<SetDuration> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Set duration(5 - 180 secs)"),
      content: Container(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 15,
              ),
              onPressed:  widget.duration> 5 ? () {
                setState(() {
                  widget.duration = widget.duration - 1;
                });
              }:null,
            ),
            Column(
              children: <Widget>[
                Text(
                  widget.duration.toString(),
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                ),
                Text("secs")
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
              onPressed: widget.duration < 180 ?() {
                setState(() {
                  widget.duration =  widget.duration + 1;
                });
              }:null,
            )
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text("CANCEL"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text(
            "SET",
            style: TextStyle(color: Colors.blueAccent),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
