import 'package:flutter/material.dart';

class ExerciseItem extends StatefulWidget {
  final String title;
  final String imageUrl;
  final List<String> discreption;
  final int reps;
  final int duration;
  int currentIndex;


  final int totalLength;
  ExerciseItem(
      {@required this.title,
      @required this.imageUrl,
      @required this.discreption,
      @required this.duration,
      @required this.reps,
      @required this.currentIndex,
      @required this.totalLength});

  @override
  _ExerciseItemState createState() => _ExerciseItemState();
}

class _ExerciseItemState extends State<ExerciseItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            actions: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "CLOSE",
                      style: TextStyle(color: Colors.lightBlueAccent),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.brown[900],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.skip_previous,
                            color: Colors.white,
                            size: 40,
                          ),
                          onPressed: () {
                            setState(() {
                              widget.currentIndex = widget.currentIndex - 1;
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "${widget.currentIndex + 1}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 35),
                              ),
                              Text(
                                "/${widget.totalLength}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.skip_next,
                            color: Colors.white,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 140,
                  width: 300,
                  child: Image.asset(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(widget.title),
                Container(
                  height: 150,
                  width: 300,
                  child: ListView.builder(
                    itemCount: widget.discreption.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                      child: Text(
                        widget.discreption[index],
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Icon(
                    Icons.dehaze,
                    color: Colors.grey,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.width * 0.3,
                  width: MediaQuery.of(context).size.width * 0.28,
                  child: Image.asset(
                    widget.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        widget.title,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "x${widget.reps}",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          "${widget.duration} sec",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            indent: 50,
            endIndent: 20,
            height: 2,
          ),
        ],
      ),
    );
  }
}
