import 'package:flutter/material.dart';
import 'package:homeworkoutapp/screens/discover/wokoutDetailScreen2.dart';

class ForBeginnersItem extends StatelessWidget {
  final String title;
  final String id;
  ForBeginnersItem({
    @required this.title,
    @required this.id,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(WorkoutDetailScreenTwo.routeName,
            arguments: {'id': id, 'title': title});
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue[700], Colors.blue.withOpacity(0.95)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
            borderRadius: BorderRadius.circular(3),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 90,
                left: 20,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
              ),
              Positioned(
                left: 60,
                bottom: 70,
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.1),
                  radius: 80,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
