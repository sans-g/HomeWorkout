import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data1 = [49.0, 50.0, 90.5, 200.0, 50.0];

  Material mychart2Items() {
    return Material(
      child: Sparkline(
        data: data1,
        fillMode: FillMode.below,
        fillGradient: new LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.cyan, Colors.cyan.withOpacity(0.1)],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: mychart2Items(),
    );
  }
}
