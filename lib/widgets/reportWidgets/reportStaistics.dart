import 'package:flutter/material.dart';

class ReportStatistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {},
      child: Container(
        width: size.width,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "87",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "WORKOUT",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "5248",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "KCAL",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    "258",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "MINUTES",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
