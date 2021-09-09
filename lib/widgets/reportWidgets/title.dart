
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final Function onTab;
  final Widget title2;
  TitleWidget({@required this.title2, @required this.onTab, @required this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),
          ),
          InkWell(
            onTap: onTab,
            child: title2,
          ),
        ],
      ),
    );
  }
}
