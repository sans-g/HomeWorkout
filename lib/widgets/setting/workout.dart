import 'package:flutter/material.dart';
import 'package:homeworkoutapp/widgets/setting/setDurationDialogBox.dart';
import 'package:homeworkoutapp/widgets/soundOptions.dart';

class Workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "WORKOUT",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.free_breakfast,
              color: Colors.grey,
            ),
            title: Text("Training Rest"),
            trailing: Container(
              width: 100,
              child: Row(
                children: <Widget>[
                  Text(
                    "25 secs",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return SetDuration(20);
                  });
            },
          ),
          ListTile(
            leading: Icon(
              Icons.restore,
              color: Colors.grey,
            ),
            title: Text("Countdown Time"),
            trailing: Container(
              width: 100,
              child: Row(
                children: <Widget>[
                  Text(
                    "15 secs",
                    style: TextStyle(color: Colors.blue),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return SetDuration(15);
                  });
            },
          ),
          ListTile(
            leading: Icon(
              Icons.volume_up,
              color: Colors.grey,
            ),
            title: Text("Sound options"),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return SoundOption();
                  });
            },
          )
        ],
      ),
    );
  }
}
