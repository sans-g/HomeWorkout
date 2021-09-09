import 'package:day_selector/day_selector.dart';
import 'package:flutter/material.dart';

class DaySelectorWidget extends StatefulWidget {
  @override
  _DaySelectorWidgetState createState() => _DaySelectorWidgetState();
}

class _DaySelectorWidgetState extends State<DaySelectorWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DaySelector(
        onChange: (value) {
          print('value is $value');
          if (DaySelector.monday & value == DaySelector.monday) {
            print('monday selected');
          }
          if (DaySelector.tuesday & value == DaySelector.tuesday) {
            print('tuesday selected');
          }
          if (DaySelector.wednesday & value == DaySelector.wednesday) {
            print('wednesday selected');
          }
          if (DaySelector.thursday & value == DaySelector.thursday) {
            print('thursday selected');
          }
          if (DaySelector.friday & value == DaySelector.friday) {
            print('friday selected');
          }
          if (DaySelector.saturday & value == DaySelector.saturday) {
            print('saturday selected');
          }
          if (DaySelector.sunday & value == DaySelector.sunday) {
            print('sunday selected');
          }
        },
      ),
    );
  }
}
