import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:golfcart/home/map/map_screen.dart';
import 'package:golfcart/widgets/common_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> todoList = List();

  Size deviceSize;
  final _scaffoldState = GlobalKey<ScaffoldState>();

  BuildContext _context;


  @override
  void initState() {
    super.initState();
  }

  Widget homeScaffold(BuildContext context) => Theme(
      data: Theme.of(context).copyWith(),
      child: Scaffold(
          key: _scaffoldState,
          backgroundColor: Colors.white,
          drawer: CommonDrawer(),
          body: MapScreen()));

  @override
  Widget build(BuildContext context) {
    _context = context;
    deviceSize = MediaQuery.of(context).size;
    return defaultTargetPlatform == TargetPlatform.iOS
        ? null
        : homeScaffold(context);
  }
}
