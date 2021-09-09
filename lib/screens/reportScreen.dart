import 'package:flutter/material.dart';
import 'package:homeworkoutapp/widgets/BIMReport.dart';
import 'package:homeworkoutapp/widgets/appDrawer.dart';
import 'package:homeworkoutapp/widgets/reportWidgets/weight.dart';
import 'package:homeworkoutapp/widgets/reportWidgets/reportStaistics.dart';
import 'package:homeworkoutapp/widgets/reportWidgets/history.dart';

class ReportScreen extends StatefulWidget {
  static const routeName = "/reportScreen";

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
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
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "REPORT",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ReportStatistics(),
          Divider(
            height: 3,
            color: Colors.grey,
          ),
          History(),
          Divider(
            height: 3,
            color: Colors.grey,
          ),
          Weight(),
          Divider(
            height: 3,
            color: Colors.grey,
          ),
          BMIReport()
        ],
      ),
    );
  }
}
