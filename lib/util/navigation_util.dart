import 'package:dicoding_final_timer/screen/stopwatch_screen.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

goToStopwatchPage() {
  Navigator.popUntil(
    navigatorKey.currentState!.context,
    ModalRoute.withName('/'),
  );
  Navigator.pushReplacement(
    navigatorKey.currentState!.context,
    MaterialPageRoute(builder: (context) => const StopwatchScreen()),
  );
}
