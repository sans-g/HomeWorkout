import 'package:flutter/material.dart';
import 'package:homeworkoutapp/widgets/appDrawer.dart';
import 'package:homeworkoutapp/widgets/setting/community.dart';
import 'package:homeworkoutapp/widgets/setting/generalSetting.dart';
import 'package:homeworkoutapp/widgets/setting/supportUs.dart';
import 'package:homeworkoutapp/widgets/setting/voiceOption.dart';
import 'package:homeworkoutapp/widgets/setting/workout.dart';

class SettingScreen extends StatelessWidget {
  static const routeName = "/settingScreen";
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
          "SETTINGS",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Workout(),
          VoiceOption(),
          GeneralSetting(),
          Community(),
          SupportUs(),
        ],
      ),
    );
  }
}
