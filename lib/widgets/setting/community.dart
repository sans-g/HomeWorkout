import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "COMMUNITY",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.grey,
            ),
            title: Text("Share with friends"),
          )
        ],
      ),
    );
  }
}
