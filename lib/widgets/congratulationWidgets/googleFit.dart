import 'package:flutter/material.dart';

class GoogleFit extends StatefulWidget {
  @override
  _GoogleFitState createState() => _GoogleFitState();
}

class _GoogleFitState extends State<GoogleFit> {
  @override
  bool sync = true;

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          title: Text(
            "Sync to Google Fit",
            style:
                TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.w700),
          ),
          trailing: Switch(
            value: sync,
            onChanged: (value) {
              setState(() {
                sync = value;
              });
            },
          ),
        ),
        Divider(
          color: Colors.black,
          height: 4,
        )
      ],
    );
  }
}
