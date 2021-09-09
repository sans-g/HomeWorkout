import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeworkoutapp/dummy_data/dummyExercise.dart';
import 'package:homeworkoutapp/model/exercise.dart';
import 'package:homeworkoutapp/screens/WorkoutDetailScreen.dart';

class PickForYouItem extends StatelessWidget {
  String imageUrl;
  String id;
  String title;
  String duration;
  String category;
  PickForYouItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.duration,
    this.category,
  });
  @override
  Widget build(BuildContext context) {
    List<Exercise> exercises = DUMMY_EXERCISES
        .where((exercise) => exercise.categories.contains(id))
        .toList();
    int sum = 0;
    for (int i = 0; i < exercises.length; i++) {
      sum = sum + exercises[i].duration.inSeconds;
    }
    return InkWell(
      splashColor: Colors.blue.withOpacity(0.4),
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.of(context).pushNamed(WorkoutDetailScreen.routeName,
            arguments: {'id': id, 'imageUrl': imageUrl, 'title': title});
      },
      child: Container(
        width: MediaQuery.of(context).size.width - 50,
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 2.0,
                  spreadRadius: 2.0,
                ),
              ]),
              width: 90,
              height: 90,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 170,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Text(
                          "${(sum / 60).round()} min || $category",
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 10,
                    height: 3,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
