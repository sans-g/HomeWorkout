import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeworkoutapp/widgets/homePageWidgets/advance.dart';
import 'package:homeworkoutapp/widgets/homePageWidgets/animatedAppBar.dart';
import 'package:homeworkoutapp/widgets/homePageWidgets/beginner.dart';
import 'package:homeworkoutapp/widgets/homePageWidgets/discover.dart';
import 'package:homeworkoutapp/widgets/homePageWidgets/gradientContainer.dart';
import 'package:homeworkoutapp/widgets/homePageWidgets/intermediate.dart';
import 'package:homeworkoutapp/widgets/homePageWidgets/sevenFiourChallange.dart';
import 'package:homeworkoutapp/widgets/homePageWidgets/weekGoal.dart';

import '../widgets/appDrawer.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/ProductPage";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  AnimationController _ColorAnimationController;
  AnimationController _TextAnimationController;
  Animation _colorTween, _homeTween, _workOutTween, _iconTween, _drawerTween;
  @override
  void initState() {
    _ColorAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));
    _colorTween = ColorTween(begin: Colors.transparent, end: Colors.white)
        .animate(_ColorAnimationController);
    _iconTween =
        ColorTween(begin: Colors.white, end: Colors.lightBlue.withOpacity(0.5))
            .animate(_ColorAnimationController);
    _drawerTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_ColorAnimationController);
    _homeTween = ColorTween(begin: Colors.white, end: Colors.blue)
        .animate(_ColorAnimationController);
    _workOutTween = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(_ColorAnimationController);
    _TextAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 0));

    super.initState();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  bool scrollListener(ScrollNotification scrollInfo) {
    bool schroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _ColorAnimationController.animateTo(scrollInfo.metrics.pixels / 80);

      _TextAnimationController.animateTo(scrollInfo.metrics.pixels);
      return schroll = true;
    }
    return schroll;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: AppDrawer(),
      backgroundColor: Color(0xFFEEEEEE),
      body: NotificationListener<ScrollNotification>(
        onNotification: scrollListener,
        child: Container(
          height: double.infinity,
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        GradientContainer(),
                        SevenFourChallange(),
                        Beginner(),
                        Intermediate(),
                        Advance(),
                        Discover(),
                        SizedBox(
                          height: 70,
                        )
                      ],
                    ),
                    WeekGoal(),
                  ],
                ),
              ),
              AnimatedAppBar(
                drawerTween: _drawerTween,
                onpressed: () {
                  scaffoldKey.currentState.openDrawer();
                },
                ColorAnimationController: _ColorAnimationController,
                colorTween: _colorTween,
                homeTween: _homeTween,
                iconTween: _iconTween,
                workOutTween: _workOutTween,
              )
            ],
          ),
        ),
      ),
    );
  }
}
