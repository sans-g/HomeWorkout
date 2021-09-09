import 'package:flutter/material.dart';
import 'package:homeworkoutapp/dummy_data/tileList.dart';
import 'package:homeworkoutapp/model/tile.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/withEquipment/tilewidget.dart';

class WorkoutDetailScreenTile extends StatefulWidget {
  static const routeName = "/WorkoutDetailScreenTile";

  @override
  _WorkoutDetailScreenTileState createState() =>
      _WorkoutDetailScreenTileState();
}

class _WorkoutDetailScreenTileState extends State<WorkoutDetailScreenTile>
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
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs['title'];
    final id = routeArgs['id'];
    final imageUrl = routeArgs['imageUrl'];
    List<Tile> exercises =
        TileList.where((exercise) => exercise.id.startsWith(id)).toList();

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
                    titlePadding: EdgeInsets.only(left: 50, bottom: 17),
                    background: Image.asset(
                      imageUrl,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              SliverPadding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  sliver: new SliverFixedExtentList(
                    itemExtent: 102,
                    delegate: new SliverChildBuilderDelegate(
                      (builder, index) => TileWidget(
                        imageUrl: exercises[index].imageUrl,
                        category: exercises[index].category,
                        id: exercises[index].id,
                        title: exercises[index].title,
                      ),
                      childCount: exercises.length,
                    ),
                  )),
            ],
          ),
        ),

      ]),
    );
  }
}
