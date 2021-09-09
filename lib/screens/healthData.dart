import 'package:flutter/material.dart';

class HealthData extends StatelessWidget {
  static const routeName = "/healthData";
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Health Data",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("Gender"),
            subtitle: Text("MALE"),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      content: Container(
                        height: 100,
                        child: Column(
                          children: <Widget>[
                            FlatButton(
                              child: Text("Female"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            FlatButton(
                              child: Text("Male"),
                              onPressed: (){
                                Navigator.of(context).pop();

                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
          ),
          ListTile(
            title: Text("Year of Birth"),
            subtitle: Text("1999"),
          )
        ],
      ),
    );
  }
}
