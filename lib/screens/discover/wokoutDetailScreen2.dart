import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homeworkoutapp/dummy_data/dummyExercise.dart';
import 'package:homeworkoutapp/model/exercise.dart';
import 'package:homeworkoutapp/screens/startWorkoutScreen.dart';
import 'package:homeworkoutapp/widgets/exerciseItem/exerciseItem.dart';

class WorkoutDetailScreenTwo extends StatefulWidget {
  static const routeName = "/WorkoutDetailScreen2";

  @override
  _WorkoutDetailScreenTwoState createState() => _WorkoutDetailScreenTwoState();
}

class _WorkoutDetailScreenTwoState extends State<WorkoutDetailScreenTwo>
    with TickerProviderStateMixin {
  AnimationController animationController;
  Animation iconColor, titleColor;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 0),
    );
    iconColor = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(animationController);
    titleColor = ColorTween(begin: Colors.white, end: Colors.black)
        .animate(animationController);
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

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - 80;
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    List<Exercise> exercises = DUMMY_EXERCISES
        .where((exercise) => exercise.categories.contains(id))
        .toList();
    int sum = 0;
    for (int i = 0; i < exercises.length; i++) {
      sum = exercises[i].duration.inSeconds + sum;
    }
    print(sum);

    return Scaffold(
      key: scaffoldKey,
      body: Stack(children: [
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
                  bottom: PreferredSize(
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Divider(
                            height: 2,
                            color: Colors.grey,
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 50,
                              ),
                              Container(
                                height: 20,
                                width: 5,
                                color: Colors.blueAccent,
                              ),
                              Text(
                                " ${(sum / 60).round()} Mins : ${exercises.length} Workouts",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18),
                              )
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 2,
                          )
                        ],
                      ),
                    ),
                    preferredSize: Size(MediaQuery.of(context).size.width, 40),
                  ),
                  backgroundColor: Colors.white,
                  leading: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: iconColor.value,
                    ),
                  ),
                  expandedHeight: 190,
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                      title,
                      style: TextStyle(color: titleColor.value),
                    ),
                    titlePadding: EdgeInsets.only(left: 50, bottom: 55),
                    background: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Colors.blue[800],
                        Colors.blue.withOpacity(0.6)
                      ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
                    ),
                  ),
                ),
              ),
              SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  sliver: new SliverFixedExtentList(
                    itemExtent: 102,
                    delegate: new SliverChildBuilderDelegate(
                      (builder, index) => ExerciseItem(
                        currentIndex: index,
                        totalLength: exercises.length,
                        title: exercises[index].title,
                        duration: exercises[index].duration.inSeconds,
                        reps: exercises[index].reps,
                        discreption: exercises[index].Steps,
                        imageUrl: exercises[index].url,
                      ),
                      childCount: exercises.length,
                    ),
                  )),
            ],
          ),
        ),
        Positioned(
          width: MediaQuery.of(context).size.width,
          height: 80,
          top: height,
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Divider(
                  color: Colors.grey,
                  height: 2,
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).popAndPushNamed(
                        StartWorkoutScreen.routeName,
                        arguments: {
                          "id": id,
                        });
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width - 60,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "START",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
