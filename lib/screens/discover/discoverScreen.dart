import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:homeworkoutapp/widgets/appDrawer.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/bodyFocus/bodyFocus.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/challenge/challenge.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/fastworkout/fastWorkout.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/forbeginners/forBeginners.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/fourMinTabata.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/pickforyou/pickForYou.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/premium.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/stretch/stretch.dart';
import 'package:homeworkoutapp/widgets/dicoverWidgets/withEquipment/withWquipement.dart';

class DiscoverScreen extends StatelessWidget {
  static const routeName = "/discoverScreen";
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      drawer: AppDrawer(),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.dehaze,
            color: Colors.black87,
          ),
          onPressed: () {
            scaffoldKey.currentState.openDrawer();
          },
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "DISCOVER",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              EvaIcons.refreshOutline,
              color: Colors.black87,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              Premium(),
              FourMinTabata(),
              PickForYou(),
              ForBeginners(),
              FastWorkout(),
              Challenge(),
              WithEquipment(),
              Stretch(),
              BodyFocus()
            ],
          ),
        ),
      ),
    );
  }
}
