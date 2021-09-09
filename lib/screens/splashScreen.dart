import 'dart:async';

import 'package:flutter/material.dart';

import 'homePage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = Duration(seconds: 4);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(HomePage.routeName);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/splashScreen.jpeg',
                fit: BoxFit.cover,
              )),
          Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.blue.withOpacity(0.2),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height * 0.9,
              left: MediaQuery.of(context).size.width * 0.15,
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/bottomSplashImage.png',
                    width: 50,
                    height: 50,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "ENERGY & PRESISTENCE",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        "CONQUER ALL THINGS",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            wordSpacing: 2,
                            letterSpacing: 4),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
