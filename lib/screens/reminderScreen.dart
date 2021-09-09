import 'package:flutter/material.dart';
import 'package:homeworkoutapp/data/moor_database.dart';
import 'package:homeworkoutapp/widgets/appDrawer.dart';

class ReminderScreen extends StatefulWidget {
  static const routeName = "/reminderScreen";

  @override
  _ReminderScreenState createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  TimeOfDay pickedTime;
  Future<Null> selectTime(BuildContext context) async {
    pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      ReminderDatabase().insertNewReminder(ReminderTableData(
          time: pickedTime.format(context).toString(), isReminderActive: true));
    });
  }

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
        bottom: PreferredSize(
          preferredSize: Size(100, 3),
          child: Divider(
            height: 3,
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        backgroundColor: Colors.white,
        title: Text(
          "REMINDER",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: StreamBuilder(
        stream: ReminderDatabase().watchAllOrder(),
        builder: (context, AsyncSnapshot<List<ReminderTableData>> snapshot) {
          return ListView.builder(
            itemBuilder: (_, index) {
              return Padding(
                padding:
                    const EdgeInsets.only(left: 5, right: 5, bottom: 5, top: 5),
                child: Container(
                  height: 126,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        offset: const Offset(3.0, 3.0),
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              snapshot.data[index].time,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Switch(
                              value: snapshot.data[index].isReminderActive,
                              onChanged: (value) {
                                setState(() {
                                  ReminderDatabase().updateReminder(
                                      ReminderTableData(
                                          isReminderActive: value));
                                });
                              },
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Repeat",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  "Sun,Mon,Tue,Wed,Thu,Fri,Sat",
                                  style: TextStyle(color: Colors.grey),
                                )
                              ],
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.grey,
                              ),
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Tips"),
                                        content: Text("Confirm delete?"),
                                        actions: <Widget>[
                                          FlatButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              "CANCEL",
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                          ),
                                          FlatButton(
                                            onPressed: () {
                                              setState(() {
                                                ReminderDatabase()
                                                    .deleteReminder(
                                                        snapshot.data[index]);
                                              });

                                              Navigator.of(context).pop();
                                            },
                                            child: Text(
                                              "OK",
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                          )
                                        ],
                                      );
                                    });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: snapshot.data.length,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          selectTime(context);
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
