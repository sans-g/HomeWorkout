import 'package:flutter/material.dart';
import 'package:homeworkoutapp/screens/setAGoal.dart';

class WeekGoal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 170,
      height: 160,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Text(
                    "WEEK GOAL",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ),
              ),
              Text("Set weekly goals for a better boody shape"),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      transitionDuration: Duration(milliseconds: 500),
                      transitionsBuilder:
                          (context, animation, secondAnimation, child) {
                        animation = CurvedAnimation(
                            parent: animation, curve: Curves.easeInOutCubic);
                        return SlideTransition(
                          child: child,
                          position: Tween(
                                  begin: Offset(1.0, 0.5),
                                  end: Offset(0.0, 0.0))
                              .animate(animation),
                        );
                      },
                      pageBuilder: (context, animation, secondAnimation) {
                        return SetAGoal();
                      }));
                },
                focusColor: Colors.white,
                child: Container(
                  height: 55,
                  width: MediaQuery.of(context).size.width - 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(
                          colors: [Colors.blue[200], Colors.blueAccent[700]],
                          end: Alignment.bottomRight,
                          begin: Alignment.topLeft)),
                  child: Center(
                    child: Text(
                      "SET A GOAL",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18),
                    ),
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
