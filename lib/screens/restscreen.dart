import 'dart:async';

import 'package:flutter/material.dart';
import 'package:homeworkoutapp/dummy_data/dummyExercise.dart';

class RestScreen extends StatefulWidget {
  static const routeName = "/restScreen";
  @override
  _RestScreenState createState() => _RestScreenState();
}

class _RestScreenState extends State<RestScreen> with TickerProviderStateMixin {
  AnimationController controller;
  Duration duration = Duration(seconds: 20);

  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${(duration.inSeconds).toString()}';
  }

  startTime(Duration duration) async {
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pop();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: duration,
    );
    controller.reverse(from: controller.value == 0 ? 1.0 : controller.value);
  }

  @override
  Widget build(BuildContext context) {
    startTime(duration);

    final id = ModalRoute.of(context).settings.arguments as String;
    final currentExercise =
        DUMMY_EXERCISES.firstWhere((exercise) => exercise.id == id);
    print(id);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/fastwork/fastwork4.jpg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 80,
            child: Container(
              height: 80,
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          "NEXT",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          currentExercise.title,
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "x${currentExercise.reps}",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Image.asset(
                      currentExercise.url,
                      height: 100,
                      width: 100,
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(() {
                        duration = duration + Duration(seconds: 20);
                        print(duration);
                      });
                    },
                    child: Container(
                      child: Center(
                        child: Text(
                          "+20s",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    child: AnimatedBuilder(
                        animation: controller,
                        builder: (context, child) {
                          return Column(
                            children: <Widget>[
                              Expanded(
                                child: Align(
                                  alignment: FractionalOffset.center,
                                  child: AspectRatio(
                                    aspectRatio: 1.0,
                                    child: Stack(
                                      children: <Widget>[
                                        Positioned.fill(
                                          child: CustomPaint(
                                              painter: CustomTimerPainter(
                                            animation: controller,
                                            backgroundColor: Colors.transparent,
                                            color: Colors.white,
                                          )),
                                        ),
                                        Align(
                                          alignment: FractionalOffset.center,
                                          child: Text(
                                            timerString,
                                            style: TextStyle(
                                                fontSize: 60.0,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          fontSize: 30),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CustomTimerPainter extends CustomPainter {
  CustomTimerPainter({
    this.animation,
    this.backgroundColor,
    this.color,
  }) : super(repaint: animation);

  final Animation<double> animation;
  final Color backgroundColor, color;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.butt
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(size.center(Offset.zero), size.width / 2.0, paint);
    paint.color = color;
    double progress = (1.0 - animation.value) * 2 * 22 / 7;
    canvas.drawArc(Offset.zero & size, 22 / 7 * 1.5, -progress, false, paint);
  }

  @override
  bool shouldRepaint(CustomTimerPainter old) {
    return animation.value != old.animation.value ||
        color != old.color ||
        backgroundColor != old.backgroundColor;
  }
}
