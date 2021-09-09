import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  "1",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "WORKOUT",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  "1",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "KCAL",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  "1",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "MINUTES",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
