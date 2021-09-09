import 'package:flutter/material.dart';

class SetAGoal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/fastwork/fastwork4.jpg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.9),
          ),
          Positioned(
            top: 20,
            left: 15,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Positioned(
            top: 65,
            left: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Set your weekly goal",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  "We recommend training at lease 3 days weekly for a\nbetter result",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 170,
            left: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Weekly trainig days",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "4 days",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 300,
            left: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "First day of week",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                SizedBox(
                  height: 5,
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Sunday",
                          style:
                              TextStyle(color: Colors.blueAccent, fontSize: 20),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 600,
            left: 50,
            right: 50,
            child: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                height: 65,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                child: Center(
                  child: Text(
                    "SAVE",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
