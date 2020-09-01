import 'package:flutter/cupertino.dart';
import 'package:golfcart/home/map/timer_text.dart';

class CountTimer extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CounterTimeState();
  }
}

class _CounterTimeState extends State<CountTimer> {
  Stopwatch stopwatch = new Stopwatch();
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TimerText(stopwatch: stopwatch),
      //      Text(
      //   "00:00",
      //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      // )
    );
  }

  void startTimer() {
    stopwatch.start();
  }

  void stopTimer() {
    stopwatch.stop();
  }

  @override
  void dispose() {
    if (stopwatch.isRunning) {
      stopwatch.stop();
    }
    super.dispose();
  }
}
