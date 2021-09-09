import 'package:flutter/material.dart';
import 'package:homeworkoutapp/screens/WorkoutDetailScreen.dart';

class FourMinTabata extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    var id = "4mt";
    var title = "";
    var imageUrl = "assets/fourmintabata.jpg";
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(WorkoutDetailScreen.routeName, arguments: {
          "id": id,
          'title': title,
          'imageUrl': imageUrl,
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 30),
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  "assets/fourmintabata.jpg",
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 100,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "4 MIN Tabata",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The most effective workout for fat burning.\nHigh intensity workouts double the matab...",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
