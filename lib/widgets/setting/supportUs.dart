import 'package:flutter/material.dart';

class SupportUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 256,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "SUPPORT US",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.message,
              color: Colors.grey,
            ),
            title: Text("Rate us"),
          ),
          ListTile(
            leading: Icon(
              Icons.mode_edit,
              color: Colors.grey,
            ),
            title: Text("Feedback"),
          ),
          ListTile(
            leading: Icon(
              Icons.remove_circle_outline,
              color: Colors.grey,
            ),
            title: Text("Remove Ads"),
          ),
          ListTile(
            leading: Icon(
              Icons.remove_red_eye,
              color: Colors.grey,
            ),
            title: Text("Privacy policy"),
          )
        ],
      ),
    );
  }
}
