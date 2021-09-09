import 'package:flutter/material.dart';
import 'package:homeworkoutapp/screens/discover/workoutDetailScreenTile.dart';

class WithEquipment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String title = "WITH EQUIPMENT";
    String imageUrl = "assets/withequipment.jpg";
    String id = "wel";

    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(WorkoutDetailScreenTile.routeName,
            arguments: {'title': title, 'imageUrl': imageUrl, 'id': id});
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            "With Equipment",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 22),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 106,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: Image.asset(
                    "assets/withequipment.jpg",
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width - 120,
                  top: 35,
                  child: CircleAvatar(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
