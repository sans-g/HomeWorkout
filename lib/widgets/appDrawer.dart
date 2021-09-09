import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homeworkoutapp/screens/reportScreen.dart';
import 'package:homeworkoutapp/screens/discover/discoverScreen.dart';
import 'package:homeworkoutapp/screens/homePage.dart';
import 'package:homeworkoutapp/screens/reminderScreen.dart';
import 'package:homeworkoutapp/screens/settings.dart';
import 'package:language_pickers/language_picker_dialog.dart';
import 'package:language_pickers/languages.dart';
import 'package:language_pickers/utils/utils.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  Language _selectedDialogLanguage =
      LanguagePickerUtils.getLanguageByIsoCode('ko');

  @override
  Widget build(BuildContext context) {
    Widget _buildDialogItem(Language language) => Row(
          children: <Widget>[
            Text(language.name),
            SizedBox(width: 8.0),
            Flexible(child: Text("(${language.isoCode})"))
          ],
        );
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    "assets/advance/advance3.jpg",
                    height: 170,
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                  ),
                  color: Colors.lightBlue,
                ),
                Positioned(
                  top: 115,
                  left: 20,
                  child: Text(
                    "Home Workout",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                )
              ],
            ),
            ListTile(
              title: Text("Training plans"),
              onTap: () {
                Navigator.of(context).pushReplacementNamed(HomePage.routeName);
              },
              leading: FaIcon(
                FontAwesomeIcons.stopwatch,
                size: 25,
                color: Colors.black87.withOpacity(0.7),
              ),
            ),
            ListTile(
              title: Text("Discover"),
              onTap: () {
                Navigator.of(context).pushNamed(DiscoverScreen.routeName);
              },
              leading: Icon(
                Icons.assignment,
                size: 25,
                color: Colors.black87.withOpacity(0.7),
              ),
            ),
            ListTile(
              title: Text("Report"),
              onTap: () {
                Navigator.of(context).pushNamed(ReportScreen.routeName);
              },
              leading: FaIcon(
                Icons.equalizer,
                size: 25,
                color: Colors.black87.withOpacity(0.7),
              ),
            ),
            ListTile(
              title: Text("Reminder"),
              onTap: () {
                Navigator.of(context).pushNamed(ReminderScreen.routeName);
              },
              leading: FaIcon(
                Icons.watch,
                size: 25,
                color: Colors.black87.withOpacity(0.7),
              ),
            ),
            ListTile(
              title: Text("Language options"),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => Theme(
                      data:
                          Theme.of(context).copyWith(primaryColor: Colors.pink),
                      child: LanguagePickerDialog(
                          titlePadding: EdgeInsets.all(8.0),
                          searchCursorColor: Colors.pinkAccent,
                          searchInputDecoration:
                              InputDecoration(hintText: 'Search...'),
                          isSearchable: true,
                          title: Text('Select your language'),
                          onValuePicked: (Language language) => setState(() {
                                _selectedDialogLanguage = language;
                                print(_selectedDialogLanguage.name);
                                print(_selectedDialogLanguage.isoCode);
                              }),
                          itemBuilder: _buildDialogItem)),
                );
              },
              leading: FaIcon(
                Icons.language,
                size: 25,
                color: Colors.black87.withOpacity(0.7),
              ),
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {
                Navigator.of(context).pushNamed(SettingScreen.routeName);
              },
              leading: Icon(
                Icons.settings,
                size: 25,
                color: Colors.black87.withOpacity(0.7),
              ),
            ),
            ListTile(
              title: Text("Restart progress"),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text("Restart Progresss"),
                        content: Text("Press OK to restart progress..."),
                        actions: <Widget>[
                          FlatButton(
                            child: Text(
                              "CANCEL",
                              style: TextStyle(color: Colors.blue),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          FlatButton(
                            child: Text(
                              "OK",
                              style: TextStyle(color: Colors.blue),
                            ),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    });
              },
              leading: Icon(
                Icons.refresh,
                size: 25,
                color: Colors.black87.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
