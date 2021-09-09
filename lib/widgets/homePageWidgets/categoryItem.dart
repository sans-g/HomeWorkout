import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:homeworkoutapp/screens/WorkoutDetailScreen.dart';

class CategoryItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String id;

  CategoryItem({
     this.imageUrl,
     this.title,
     this.id,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(WorkoutDetailScreen.routeName, arguments: {
          "id":id,
          'title': title,
          'imageUrl': imageUrl,
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
          height: 140,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.italic),
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            EvaIcons.flash,
                            color: Colors.lightBlue,
                            size: 15,
                          ),
                          (id.startsWith("i") || id.startsWith("a"))
                              ? Icon(
                                  EvaIcons.flash,
                                  color: Colors.blue,
                                  size: 15,
                                )
                              : Icon(
                                  EvaIcons.flash,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                          id.startsWith("a")
                              ? Icon(
                                  EvaIcons.flash,
                                  color: Colors.blue,
                                  size: 15,
                                )
                              : Icon(
                                  EvaIcons.flash,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                        ],
                      )
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
