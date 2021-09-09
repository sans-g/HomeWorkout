import 'package:flutter/material.dart';
import 'package:homeworkoutapp/screens/discover/workoutDetailScreenTile.dart';

class BodyFocusItem extends StatelessWidget {
  String title;
  String id;
  String imageUrl;
  BodyFocusItem(
      {@required this.id, @required this.title, @required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(WorkoutDetailScreenTile.routeName, arguments: {
          'id': id,
          'title': title,
          'imageUrl': imageUrl,
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey[900], Colors.blueGrey],
                end: Alignment.topRight,
                begin: Alignment.bottomLeft),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 85,
                left: 15,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
