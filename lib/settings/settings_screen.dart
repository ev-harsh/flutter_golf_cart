import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golfcart/app_navigator.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SettingsState();
}

class SettingsState extends State<SettingsScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Notifications"),
                Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    }),
              ],
            ),
          ),
          Container(
              color: Colors.grey.shade200,
              height: 45,
              child: Center(
                  child: Text(
                "Enable this option to receive notification for better experience",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0,
                    color: Colors.black.withOpacity(0.6)),
              ))),
          Container(
            color: Colors.grey.shade200,
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Terms and Conditions"),
          ),
          Container(
            color: Colors.grey.shade200,
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("Privacy Policy"),
          ),
          Container(
            color: Colors.grey.shade200,
            height: 15,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 15.0),
                child: Text("Version"),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 15.0, 15.0, 15.0),
                child: Text(
                  "Version 0.0.1",
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 13.0,
                      color: Colors.black.withOpacity(0.7)),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.grey.shade200,
            height: 15,
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(context, "/login", (r) => false);
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Log out",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0,
                      color: Colors.redAccent)),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}


