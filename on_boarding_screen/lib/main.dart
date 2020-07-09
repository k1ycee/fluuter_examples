import 'package:flutter/material.dart';
import 'package:on_boarding_screen/on_boarding_screen.dart';
import 'package:on_boarding_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        'onboarding': (context) => OnBoarding()
      },
    );
  }
}

