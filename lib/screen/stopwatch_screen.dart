import 'dart:async';

import 'package:dicoding_final_timer/component/view_component.dart';
import 'package:dicoding_final_timer/style.dart';
import 'package:dicoding_final_timer/util/stopwatch_util.dart';
import 'package:flutter/material.dart';

class StopwatchScreen extends StatelessWidget {
  const StopwatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: StopwatchBody(),
        ),
      ),
    );
  }
}

class StopwatchBody extends StatefulWidget {
  const StopwatchBody({super.key});

  @override
  State<StopwatchBody> createState() => _StopwatchBodyState();
}

class _StopwatchBodyState extends State<StopwatchBody> {
  late Stopwatch stopwatch;
  late Timer stopwatchTimer;
  StopwatchState stopwatchState = StopwatchState.notstarted;

  @override
  void initState() {
    super.initState();
    stopwatch = Stopwatch();
    stopwatchTimer = Timer(Duration.zero, () {});
  }

  void startStopwatch() {
    stopwatchState = StopwatchState.started;
    stopwatchTimer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      setState(() {});
    });
    stopwatch.start();
  }

  void pauseStopwatch() {
    stopwatchState = StopwatchState.paused;
    stopwatchTimer.cancel();
    stopwatch.stop();
    setState(() {});
  }

  void resetStopwatch() {
    stopwatchState = StopwatchState.paused;
    stopwatch.reset();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var hourValue = stopwatch.elapsed.inHours;
    var minuteValue = stopwatch.elapsed.inMinutes % 60;
    var secondValue = stopwatch.elapsed.inSeconds % 60;
    var hourText = hourValue.toString();
    var minuteText = minuteValue.toString();
    var secondText = secondValue.toString();
    if (hourText.length < 2) hourText = '0$hourText';
    if (minuteText.length != 2) minuteText = '0$minuteText';
    if (secondText.length != 2) secondText = '0$secondText';
    var hourColor = stopwatch.elapsed.inHours > 0 ? Colors.white.withOpacity(0.8) : customGrey;
    var minuteColor = stopwatch.elapsed.inMinutes > 0 ? customYellow : customGrey;
    var secondColor = stopwatch.elapsed.inSeconds > 0 ? Colors.white : customGrey;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomStopwatchText(
            timeText: hourText,
            timeTextColor: hourColor,
            timeTypeText: 'h',
          ),
          //minute
          CustomStopwatchText(
            timeText: minuteText,
            timeTextColor: minuteColor,
            timeTypeText: 'm',
          ),
          //second
          CustomStopwatchText(
            timeText: secondText,
            timeTextColor: secondColor,
            timeTypeText: 's',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSquareBorderButton(
                icon: stopwatchState == StopwatchState.started ? Icons.add : Icons.refresh,
                function: stopwatchState == StopwatchState.started
                    ? () {}
                    : () {
                        resetStopwatch();
                      },
              ),
              SizedBox(
                width: 8,
              ),
              CustomSquareButton(
                icon: stopwatchState == StopwatchState.started ? Icons.pause : Icons.play_arrow,
                function: stopwatchState == StopwatchState.started
                    ? () {
                        pauseStopwatch();
                      }
                    : () {
                        startStopwatch();
                      },
              ),
            ],
          )
        ],
      ),
    );
  }
}
