import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homeworkoutapp/screens/discover/premiumWorkoutScreen.dart';

class Premium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.blue.withOpacity(0.5),
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Navigator.of(context).push(PageRouteBuilder(
            transitionDuration: Duration(milliseconds: 500),
            transitionsBuilder: (context, animation, secondAnimation, child) {
              animation = CurvedAnimation(
                  parent: animation, curve: Curves.easeInOutCubic);
              return SlideTransition(
                child: child,
                position: Tween(begin: Offset(1.0, 0.5), end: Offset(0.0, 0.0))
                    .animate(animation),
              );
            },
            pageBuilder: (context, animation, secondAnimation) {
              return PermiumWorkoutScreen();
            }));
      },
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.gift,
              color: Colors.redAccent,
            ),
            Text(
                "All premium workouts are FREE to all users \nuntil July 1, 2020")
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.withOpacity(0.3)),
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
