import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IFeel extends StatefulWidget {
  @override
  _IFeelState createState() => _IFeelState();
}

class _IFeelState extends State<IFeel> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.45,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "I feel",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Easy",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Exhausted",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width - 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          isSelected
                              ? Icons.check_circle_outline
                              : Icons.check_circle,
                          color: Colors.green,
                        ),
                        onPressed: () {
                          setState(() {
                            isSelected = !isSelected;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Text(
                  "FEEDBACK",
                  style: TextStyle(color: Colors.blue, fontSize: 15,fontWeight: FontWeight.w800),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width - 16,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          Colors.blue.withOpacity(0.7),
                          Colors.blue[700]
                        ]),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "NEXT",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
