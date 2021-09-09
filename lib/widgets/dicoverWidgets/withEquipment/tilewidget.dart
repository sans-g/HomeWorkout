import 'package:flutter/material.dart';
import 'dart:math';

import 'package:homeworkoutapp/screens/WorkoutDetailScreen.dart';

class TileWidget extends StatelessWidget {
  String title;
  String category;
  String imageUrl;
  String id;
  TileWidget({
    @required this.id,
    @required this.imageUrl,
    @required this.title,
    @required this.category,
  });
  @override
  Widget build(BuildContext context) {
    final random = Random();
    final Color _color = Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      1,
    );

    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(WorkoutDetailScreen.routeName,
            arguments: {'id': id, 'imageUrl': imageUrl, 'title': title});
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [_color, _color.withOpacity(0.5)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, top: 8, bottom: 8),
                    child: Container(
                      height: 40,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            title,
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 17),
                          ),
                          Text(
                            "mins  ||  $category",
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Divider(
                height: 4,
                color: Colors.grey,
                indent: 10,
                endIndent: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
