import 'package:flutter/material.dart';
import 'package:homeworkoutapp/screens/discover/discoverScreen.dart';

class Discover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed(DiscoverScreen.routeName);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10, left: 15, right: 15),
        child: Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: const Offset(3.0, 3.0),
              blurRadius: 5.0,
              spreadRadius: 2.0,
            ),
          ]),
          height: 90,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  "assets/discover.jpg",
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 20,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "DISCOVER",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "MORE WORKOUT",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 40,
                  left: MediaQuery.of(context).size.width * 0.73,
                  child: Container(
                    width: 70,
                    height: 35,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "GO!",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
