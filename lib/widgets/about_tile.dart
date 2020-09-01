import 'package:flutter/material.dart';
import 'package:golfcart/app_data.dart';

class MyAboutTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AboutListTile(
      applicationIcon: FlutterLogo(
        colors: Colors.red,
      ),
      icon: FlutterLogo(
        colors: Colors.red,
      ),
      aboutBoxChildren: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        // Text(
        //   "by Google",
        //   style: TextStyle(color: Colors.grey),
        // ),
        Text(
          "",
        ),
      ],
      applicationName: AppData.appName,
      applicationVersion: "0.0.1",
      applicationLegalese: "",
    );
  }
}
