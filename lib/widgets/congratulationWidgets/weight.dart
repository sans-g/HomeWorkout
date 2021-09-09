import 'package:flutter/material.dart';

class EnterWeight extends StatefulWidget {
  final String title;
  bool isKg;
  bool isLb;
  final String type1;
  final String type2;

  final double width;
  EnterWeight(
      {@required this.isLb,
      @required this.type1,
      @required this.type2,
      @required this.isKg,
      @required this.width,
      @required this.title});
  @override
  _EnterWeightState createState() => _EnterWeightState();
}

class _EnterWeightState extends State<EnterWeight> {
  double weight;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: TextField(
                    onChanged: (value) {
                      setState(() {});
                    },
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: widget.isLb ? "0.00 ${widget.type2}" : "0.00 ${widget.type1}"),
                  ),
                  height: 50,
                  width: widget.width,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.isKg = true;
                      widget.isLb = false;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    color: widget.isKg
                        ? Colors.blue
                        : Colors.grey.withOpacity(0.5),
                    child: Center(
                      child: Text(
                        widget.type1,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.isKg = false;
                      widget.isLb = true;
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    color: widget.isLb
                        ? Colors.blue
                        : Colors.grey.withOpacity(0.5),
                    child: Center(
                      child: Text(
                        widget.type2,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
