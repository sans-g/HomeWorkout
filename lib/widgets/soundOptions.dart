import 'package:flutter/material.dart';

class SoundOption extends StatefulWidget {
  @override
  _SoundOptionState createState() => _SoundOptionState();
}

class _SoundOptionState extends State<SoundOption> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("Sound options"),
      content: Container(
        height: 168,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.volume_up,
                color: Colors.grey,
              ),
              title: Text("Mute"),
              trailing: Switch(
                onChanged: (value) {
                  setState(() {});
                },
                value: true,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.surround_sound,
                color: Colors.grey,
              ),
              title: Text("Voice guide"),
              trailing: Switch(
                onChanged: (value) {
                  setState(() {});
                },
                value: true,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.record_voice_over,
                color: Colors.grey,
              ),
              title: Text("Mute"),
              trailing: Switch(
                onChanged: null,
                value: true,
              ),
            )
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(
          child: Text(
            "OK",
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
