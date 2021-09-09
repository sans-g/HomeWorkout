import 'package:flutter/material.dart';
import 'package:homeworkoutapp/screens/WorkoutDetailScreen.dart';
import 'package:homeworkoutapp/screens/calender.dart';

import 'package:homeworkoutapp/screens/reportScreen.dart';
import 'package:homeworkoutapp/screens/congratulationScreen.dart';
import 'package:homeworkoutapp/screens/discover/discoverScreen.dart';
import 'package:homeworkoutapp/screens/discover/wokoutDetailScreen2.dart';
import 'package:homeworkoutapp/screens/discover/workoutDetailScreenTile.dart';
import 'package:homeworkoutapp/screens/healthData.dart';

import 'package:homeworkoutapp/screens/helpScreen.dart';
import 'package:homeworkoutapp/screens/homePage.dart';
import 'package:homeworkoutapp/screens/reminderScreen.dart';
import 'package:homeworkoutapp/screens/restscreen.dart';
import 'package:homeworkoutapp/screens/settings.dart';
import 'package:homeworkoutapp/screens/splashScreen.dart';
import 'package:homeworkoutapp/screens/startWorkoutScreen.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          routes: {
            HomePage.routeName: (context) => HomePage(),
            DiscoverScreen.routeName: (context) => DiscoverScreen(),
            ReminderScreen.routeName: (context) => ReminderScreen(),
            WorkoutDetailScreen.routeName: (context) => WorkoutDetailScreen(),
            WorkoutDetailScreenTwo.routeName: (context) =>
                WorkoutDetailScreenTwo(),
            WorkoutDetailScreenTile.routeName: (context) =>
                WorkoutDetailScreenTile(),
            RestScreen.routeName: (context) => RestScreen(),
            HelpScreen.roteName: (context) => HelpScreen(),
            StartWorkoutScreen.routeName: (context) => StartWorkoutScreen(
                  index: 0,
                ),
            CongratulationScreen.routeName: (context) => CongratulationScreen(),
            SettingScreen.routeName: (context) => SettingScreen(),
            Calender.routeName: (context) => Calender(),
            ReportScreen.routeName: (context) => ReportScreen(),
            HealthData.routeName: (context) => HealthData(),
          },
        ),
      ));
}
