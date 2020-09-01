import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bookings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BookingState();
  }
}

class _BookingState extends State<Bookings> {
  DateTime _dateTime;
  TimeOfDay _timeOfDayStart;
  TimeOfDay _timeOfDayEnd;
  String _holes = '9holes';

  @override
  void didUpdateWidget(Bookings oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Book Cart'),
        ),
        body: Container(
            child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 15.0, 10.0),
                child: Text(
                  'ViewHistory',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Card(
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Container(
                      width: 140,
                      child: Image.asset(
                        'assets/images/ic_golf_cart_1.png',
                      )),
                  Text('120988',style: TextStyle(fontWeight:FontWeight.bold),)
                ],
              ),
            ),
          ),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 0,
            color: _dateTime == null ? Colors.grey.shade200 : Colors.green,
            textColor: _dateTime == null ? Colors.grey.shade600 : Colors.white,
            child: Text(
              _dateTime == null
                  ? ' Select Date '
                  : _dateTime.day.toString() +
                      "-" +
                      _dateTime.month.toString() +
                      "-" +
                      _dateTime.year.toString(),
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              showDatePicker(
                      context: context,
                      initialDate:
                          _dateTime == null ? DateTime.now() : _dateTime,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(DateTime.now().year,
                          DateTime.now().month, DateTime.now().day + 6))
                  .then((date) {
                setState(() {
                  _dateTime = date;
                });
              });
            },
          ),
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color:
                        _timeOfDayStart == null ? Colors.white : Colors.green,
                    textColor: _timeOfDayStart == null
                        ? Colors.grey.shade600
                        : Colors.white,
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        _timeOfDayStart == null
                            ? ' Start Time '
                            : _timeOfDayStart.hour.toString() +
                                " : " +
                                _timeOfDayStart.minute.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    onPressed: () {
                      showTimePicker(
                        initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                        context: context,
                      ).then((value) {
                        setState(() {
                          _timeOfDayStart = value;
                        });
                      });
                    },
                  ),
                  Spacer(),
                  Text('To'),
                  Spacer(),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 0,
                    color: _timeOfDayEnd == null ? Colors.white : Colors.green,
                    textColor: _timeOfDayEnd == null
                        ? Colors.grey.shade600
                        : Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        _timeOfDayEnd == null
                            ? ' End Time '
                            : _timeOfDayEnd.hour.toString() +
                                " : " +
                                _timeOfDayEnd.minute.toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    onPressed: () {
                      showTimePicker(
                        initialTime: TimeOfDay.fromDateTime(DateTime.now()),
                        context: context,
                      ).then((value) {
                        setState(() {
                          _timeOfDayEnd = value;
                        });
                      });
                    },
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 15.0, 10.0),
                child: Text(
                  'Select Holes',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: _holes == '18holes' ? Colors.white : Colors.green,
                    textColor: _holes == '18holes'
                        ? Colors.grey.shade600
                        : Colors.white,
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        ' 9 Hole ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _holes = '9holes';
                      });
                    },
                  ),
                  Spacer(),
                  Text('or'),
                  Spacer(),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 0,
                    color: _holes == '9holes' ? Colors.white : Colors.green,
                    textColor: _holes == '9holes'
                        ? Colors.grey.shade600
                        : Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        ' 18 Hole ',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _holes = '18holes';
                      });
                    },
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: Colors.green,
                          textColor: Colors.white,
                          elevation: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text( 'Book' ,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          onPressed: () {
                         
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ])));
  }
}
