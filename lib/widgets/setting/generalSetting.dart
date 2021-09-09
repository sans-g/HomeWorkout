import 'package:flutter/material.dart';
import 'package:homeworkoutapp/screens/healthData.dart';
import 'package:language_pickers/language_picker_dialog.dart';
import 'package:language_pickers/languages.dart';
import 'package:language_pickers/utils/utils.dart';

class GeneralSetting extends StatefulWidget {
  @override
  _GeneralSettingState createState() => _GeneralSettingState();
}

class _GeneralSettingState extends State<GeneralSetting> {
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

    return Container(
      height: 384,
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "GENERAL SETTINGS",
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            title: Text("Sync to Google Fit"),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.local_hospital,
              color: Colors.grey,
            ),
            title: Text("Health Data"),
            onTap: (){
              Navigator.of(context).pushNamed(HealthData.routeName);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.alarm,
              color: Colors.grey,
            ),
            title: Text("Remind me to workout every day"),
          ),
          ListTile(
            leading: Icon(
              Icons.ac_unit,
              color: Colors.grey,
            ),
            title: Text("Metric & Imperial every day"),
          ),
          ListTile(
            leading: Icon(
              Icons.language,
              color: Colors.grey,
            ),
            title: Text("Language options"),
            subtitle: Text("English"),
            onTap: (){showDialog(
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
          ),
          ListTile(
            leading: Icon(
              Icons.mobile_screen_share,
              color: Colors.grey,
            ),
            title: Text("Keep the screen on"),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          )
        ],
      ),
    );
  }
}
