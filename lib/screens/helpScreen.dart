import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  static const roteName = '/helpScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[900],
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              FlatButton(
                onPressed: () {},
                color: Colors.white.withOpacity(0.4),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.videocam,
                        color: Colors.white,
                      ),
                      Text(
                        "VIDEO",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
