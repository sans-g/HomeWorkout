import 'package:flutter/material.dart';

class SevenFourChallange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left:15.0,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10, left: 10),
              child: Text(
                "7x4 CHALLANGE",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/sevenfour/sevenfour1.jpg",
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                          child: Text(
                            "FULL BODY",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "7x4 CHALLANGE",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 140,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/sevenfour/sevenfour2.jpg",
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0, bottom: 5),
                          child: Text(
                            "LOWER BODY",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                            "7x4 CHALLANGE",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
