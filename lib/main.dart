import 'package:dicoding_final_timer/screen/authentication_screen.dart';
import 'package:dicoding_final_timer/screen/stopwatch_screen.dart';
import 'package:dicoding_final_timer/util/login_util.dart';
import 'package:dicoding_final_timer/util/navigation_util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        navigatorKey: navigatorKey,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: isAlreadyLogin ? const StopwatchScreen() : const AuthenticationScreen(),
      ),
    );
  }
}
