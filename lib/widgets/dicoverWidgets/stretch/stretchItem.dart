import 'package:flutter/material.dart';
import 'package:homeworkoutapp/screens/WorkoutDetailScreen.dart';

class StretchItem extends StatelessWidget {
  String imageUrl;
  String title;
  String title2;
  String imageUrl2;
  String id;
  String id2;
  StretchItem(
      {@required this.title,
      @required this.id,
      @required this.id2,
      @required this.imageUrl,
      @required this.imageUrl2,
      @required this.title2});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _stretch(context, id, title, imageUrl),
        _stretch(context, id2, title2, imageUrl2)
      ],
    );
  }
}

Widget _stretch(
    BuildContext context, String id, String title, String imageUrl) {
  return InkWell(
    splashColor: Colors.blue.withOpacity(0.5),
    borderRadius: BorderRadius.circular(10),
    onTap: () {
      Navigator.of(context).pushNamed(WorkoutDetailScreen.routeName,
          arguments: {'id': id, 'title': title, 'imageUrl': imageUrl});
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    offset: const Offset(2.0, 2.0),
                    blurRadius: 2.0,
                    spreadRadius: 2.0,
                  ),
                ],
              ),
              width: 150,
              height: 110,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
