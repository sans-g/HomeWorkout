import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:homeworkoutapp/dummy_data/dummyExercise.dart';
import 'package:homeworkoutapp/model/exercise.dart';
import 'package:homeworkoutapp/screens/congratulationScreen.dart';
import 'package:homeworkoutapp/screens/helpScreen.dart';
import 'package:homeworkoutapp/screens/restscreen.dart';
import 'package:homeworkoutapp/widgets/soundOptions.dart';

class StartWorkoutScreen extends StatefulWidget {
  int index;
  StartWorkoutScreen({@required this.index});
  static const routeName = '/startWorkoutScreen';

  @override
  _StartWorkoutScreenState createState() => _StartWorkoutScreenState();
}

class _StartWorkoutScreenState extends State<StartWorkoutScreen>
    with TickerProviderStateMixin {
  @override
  AnimationController controller;
  FlutterTts flutterTts = FlutterTts();

  String get timerString {
    Duration duration = controller.duration * controller.value;
    return '${(duration.inSeconds).toString().padLeft(2, '0')}';
  }

  startTime() async {
    var _duration = Duration(seconds: 15);
    return Timer(_duration, operation);
  }

  void operation() {
    setState(() {
      widget.index = widget.index + 1;
    });
  }

  @override
  void initState() {
    super.initState();
    startTime();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 15),
    );
    controller.reverse(from: controller.value == 0 ? 1.0 : controller.value);
  }
  dispose(){
    flutterTts.stop();
    super.dispose();
  }

  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    List<Exercise> exercises = DUMMY_EXERCISES
        .where((exercise) => exercise.categories.contains(id))
        .toList();
    ThemeData themeData = Theme.of(context);
    _speak(String text) {
      flutterTts.setLanguage("en-US");
      flutterTts.setPitch(0.8);
      flutterTts.setSpeechRate(0.45);
      flutterTts.setVolume(1);
      flutterTts.speak(text);
    }

    _speak(
        "ready to go the next ${exercises[widget.index].duration.inSeconds} seconds ${exercises[widget.index].title}");
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  widget.index == 0
                      ? Text(
                          "Ready to go !",
                          style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      : SizedBox(
                          height: 30,
                        ),
                  widget.index == 0
                      ? Text(
                          exercises[widget.index].title,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      : SizedBox(
                          height: 20,
                        ),
                  Image.asset(
                    exercises[widget.index].url,
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
              widget.index > 0
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          exercises[widget.index].title,
                          style: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "X ${exercises[widget.index].reps}",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 45,
                              fontWeight: FontWeight.w900,
                              fontStyle: FontStyle.italic),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.navigate_before,
                                size: 50,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                Navigator.of(context).pushNamed(
                                    RestScreen.routeName,
                                    arguments: exercises[widget.index].id);

                                setState(() {
                                  widget.index =
                                      widget.index == 0 ? 0 : widget.index - 1;
                                });
                              },
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    RestScreen.routeName,
                                    arguments: exercises[widget.index].id);
                                setState(() {
                                  widget.index =
                                      exercises.length == widget.index + 1
                                          ? exercises.length - 1
                                          : widget.index + 1;
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.navigate_next,
                                size: 50,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                exercises.length - 1 == widget.index
                                    ? Navigator.of(context).popAndPushNamed(
                                        CongratulationScreen.routeName)
                                    : Navigator.of(context).pushNamed(
                                        RestScreen.routeName,
                                        arguments:
                                            exercises[widget.index + 1].id);
                                ;
                                setState(() {
                                  widget.index =
                                      exercises.length == widget.index + 1
                                          ? exercises.length - 1
                                          : widget.index + 1;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    )
                  : Column(
                      children: <Widget>[
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
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  color:
                                                      themeData.indicatorColor,
                                                )),
                                              ),
                                              Align(
                                                alignment:
                                                    FractionalOffset.center,
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
                        SizedBox(
                          height: 35,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              widget.index =
                                  exercises.length == widget.index + 1
                                      ? exercises.length - 1
                                      : widget.index + 1;
                            });
                          },
                          child: Text(
                            "SKIP",
                            style: TextStyle(
                              color: Colors.blue,
                              fontStyle: FontStyle.italic,
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        )
                      ],
                    )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.85,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.withOpacity(0.5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.videocam,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.withOpacity(0.5),
                    child: IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) {
                              return SoundOption();
                            });
                      },
                      icon: Icon(
                        Icons.volume_up,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.withOpacity(0.5),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(HelpScreen.roteName);
                      },
                      icon: Icon(
                        Icons.description,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            left: MediaQuery.of(context).size.width * 0.03,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
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
