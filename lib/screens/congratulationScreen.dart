import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:homeworkoutapp/widgets/congratulationWidgets/bmi.dart';
import 'package:homeworkoutapp/widgets/congratulationWidgets/googleFit.dart';
import 'package:homeworkoutapp/widgets/congratulationWidgets/iFeel.dart';
import 'package:homeworkoutapp/widgets/congratulationWidgets/weight.dart';

class CongratulationScreen extends StatefulWidget {
  static const routeName = "/congratulationScreen";

  @override
  _CongratulationScreenState createState() => _CongratulationScreenState();
}

class _CongratulationScreenState extends State<CongratulationScreen>
    with TickerProviderStateMixin {
  AnimationController animationController;
  FlutterTts flutterTts = FlutterTts();
  speak(String text) {
    flutterTts.speak(text);
    flutterTts.setPitch(0.5);
    flutterTts.setVolume(1);
    flutterTts.setLanguage("en-US");
  }

  @override
  void initState() {
    speak("well done congratulation");
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 0),
    );

    // TODO: implement initState
    super.initState();
  }

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  bool scrollListener(ScrollNotification scrollInfo) {
    bool schroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      animationController.animateTo(scrollInfo.metrics.pixels - 50);
      return schroll = true;
    }
    return schroll;
  }

  bool isKg = false;
  bool isLb = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
          children: [
        NotificationListener<ScrollNotification>(
          onNotification: scrollListener,
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: <Widget>[
              AnimatedBuilder(
                animation: animationController,
                builder: (context, child) => SliverAppBar(
                  elevation: 0,
                  pinned: true,
                  backgroundColor: Colors.purple,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  expandedHeight: MediaQuery.of(context).size.height * 0.39,
                  flexibleSpace: FlexibleSpaceBar(
                    titlePadding: EdgeInsets.only(left: 50, bottom: 55),
                    background: Stack(
                      children: <Widget>[
                        Image.asset(
                          "assets/congrats.gif",
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fitWidth,
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.2,
                          left: MediaQuery.of(context).size.width * 0.3,
                          child: Text(
                            "Nice you've done it!",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                wordSpacing: 2),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.27,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "8",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Exercise",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "2.5",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "kcal",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "0:07",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      "Duration",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.37,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Text(
                                    "DO IT AGAIN",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 19),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          "NEXT",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 19),
                                        ),
                                        Text(
                                          "SHARE",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 19),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SliverFillRemaining(
                child: ListView(
                  children: <Widget>[
                    EnterWeight(
                      isKg: isKg,
                      isLb: isLb,
                      width: MediaQuery.of(context).size.width*0.7,
                    ),
                    BMI(),
                    GoogleFit(),
                    IFeel(),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
