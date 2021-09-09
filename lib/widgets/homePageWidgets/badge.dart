import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Badge extends StatelessWidget {
  Color icon_Tween;
  Badge({@required this.icon_Tween});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FaIcon(
            FontAwesomeIcons.gift,
            color: icon_Tween,
          ),
        ),
        Positioned(
          top: 27,
          left: 15,
          child: Container(
            width: 20,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue[900],
            ),
            child: Center(
              child: Text(
                "AD",
                style: TextStyle(color: Colors.white, fontSize: 9),
              ),
            ),
          ),
        )
      ],
    );
  }
}
