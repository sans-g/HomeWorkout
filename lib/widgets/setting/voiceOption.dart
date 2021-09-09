import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class VoiceOption extends StatefulWidget {
  @override
  _VoiceOptionState createState() => _VoiceOptionState();
}

class _VoiceOptionState extends State<VoiceOption> {
  speek(){
    showDialog(
        context: context,
        builder: (_) {
          FlutterTts().speak("this is the test voice");
          return AlertDialog(
            title: Text("Did you hear the test voice?"),
            actions: <Widget>[
              FlatButton(
                child: Text(
                  "NO",
                  style: TextStyle(color: Colors.blueAccent),
                ),
                onPressed: () {
                  FlutterTts().speak("this is the test voice");
                },
              ),
              FlatButton(
                child: Text(
                  "YES",
                  style: TextStyle(color: Colors.blueAccent),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 384,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Voice Option(TTS)",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.surround_sound,
              color: Colors.grey,
            ),
            title: Text("Test Voice"),
            onTap: () {
             speek();
            },
          ),
          ListTile(
            leading: Icon(
              Icons.navigation,
              color: Colors.grey,
            ),
            title: Text("Select TTS Engine"),
            subtitle: Text("Goohle Text-to-speech Engine"),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text("Please choose guide voice engine:"),
                      content: Container(
                        height: 100,
                        child: Column(
                          children: <Widget>[
                            FlatButton(
                              child: Text("Samsung text-to-speech engine"),
                              onPressed: () {
                                Navigator.of(context).pop();
                                speek();
                              },
                            ),
                            FlatButton(
                              child: Text("Google text-to-speech engine"),
                              onPressed: () {
                                Navigator.of(context).pop();
                                speek();
                              },
                            )
                          ],
                        ),
                      ),
                    );
                  });
            },
          ),
          ListTile(
            leading: Icon(
              Icons.file_download,
              color: Colors.grey,
            ),
            title: Text("Download TTS Engine"),
          ),
          ListTile(
            leading: Icon(
              Icons.keyboard_voice,
              color: Colors.grey,
            ),
            title: Text("Voice language"),
          ),
          ListTile(
            leading: Icon(
              Icons.cloud_download,
              color: Colors.grey,
            ),
            title: Text("Download moreTTS language data"),
          ),
          ListTile(
            leading: Icon(
              Icons.build,
              color: Colors.grey,
            ),
            title: Text("Device TTS Setting"),
          )
        ],
      ),
    );
  }
}
