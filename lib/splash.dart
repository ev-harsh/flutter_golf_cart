import 'package:flutter/material.dart';
import 'package:golfcart/app_data.dart';

class Splash extends StatelessWidget {
  Splash({Key key, this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(this.title)),
        body: GestureDetector(
  onTap: () {
    Navigator.pushNamed(context,AppData.introRoute);
  },
  child: new Text("my Title"),
)
        //  Center(
        //   child: Text('Welcome'),
        // )
        );
  }
}
