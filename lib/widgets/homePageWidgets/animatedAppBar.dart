import 'package:flutter/material.dart';

import 'badge.dart';

class AnimatedAppBar extends StatelessWidget {
  AnimationController ColorAnimationController;
  Animation colorTween, homeTween, workOutTween, iconTween, drawerTween;
  Function onpressed;
  AnimatedAppBar({
    @required this.ColorAnimationController,
    @required this.onpressed,
    @required this.colorTween,
    @required this.homeTween,
    @required this.iconTween,
    @required this.drawerTween,
    @required this.workOutTween,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: AnimatedBuilder(
        animation: ColorAnimationController,
        builder: (context, child) => AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.dehaze,
              color: drawerTween.value,
            ),
            onPressed: onpressed,
          ),
          backgroundColor: colorTween.value,
          elevation: 0,
          titleSpacing: 0.0,
          title: Row(
            children: <Widget>[
              Text(
                "HOME ",
                style: TextStyle(
                    color: homeTween.value,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 1),
              ),
              Text(
                " WORKOUT",
                style: TextStyle(
                    color: workOutTween.value,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 1),
              ),
            ],
          ),
          actions: <Widget>[
            Badge(
              icon_Tween: iconTween.value,
            ),
          ],
        ),
      ),
    );
  }
}
