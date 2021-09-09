import 'package:flutter/material.dart';

class PermiumWorkoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Positioned(
                          left: 7,
                          top: 32,
                          child: IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Image.asset(
                            "assets/globe.png",
                            height: 200,
                            color: Colors.black,
                            width: MediaQuery.of(context).size.width,
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.15,
                          left: MediaQuery.of(context).size.width * 0.5,
                          child: Image.asset(
                            "assets/no.png",
                            height: 120,
                            color: Colors.black.withOpacity(0.5),
                            width: 120,
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.12,
                          left: MediaQuery.of(context).size.width * 0.2,
                          child: Transform.rotate(
                            angle: -120,
                            child: Image.asset(
                              "assets/gift.png",
                              height: 150,
                              width: 150,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "FREE PREMIUM",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              fontSize: 30),
                        ),
                        Text(
                          "DURING COVID-19",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              fontSize: 30),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "All premium workouts are FREE to all users until",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                        Text(
                          "July 1,2020",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    )
                  ],
                ),
                color: Colors.teal[400].withOpacity(0.8),
                height: MediaQuery.of(context).size.height * 0.7,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "We encourage you to avoid gathering during the outbreak of COVID-19.\n\nTo help out, we make all our workouts free to you. You can boost your immunity and keep fit at home. Hope you stay helthy during this special period.",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "LEAP Fitness Group",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.3,
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.65,
            left: MediaQuery.of(context).size.width * 0.12,
            child: InkWell(
              splashColor: Colors.white,
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width * 0.75,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "GET FREE PREMIUM",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
