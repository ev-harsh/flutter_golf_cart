import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:golfcart/home/myrides/my_ride_tile.dart';
import 'package:golfcart/home/myrides/rides.dart';

class MyRides extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Rides'),
      ),
      body: BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  // backing data
  List<Rides> data=List();
  final json = {
    "date": "23 Feb 2020",
    "id": "12345",
    "amount": "24",
    "distance": "14.0 km",
    "calories": "54.0 cal",
    "time": "24.0 min",
    "carbon": "114 gm"
  };
  var value = Rides.fromJson(json);
  data.add(value);
  data.add(value);
  data.add(value);

  return ListView.separated(
    separatorBuilder: (context, index) {
      return Divider();
    },
    itemCount: data.length,
    itemBuilder: (context, index) {
      return RidesTile(rides:data[index]);
    },
  );
}
