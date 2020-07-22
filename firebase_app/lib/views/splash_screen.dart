import 'dart:async';
import 'dart:math';

import 'package:firebase_app/theme/app_theme.dart';
import 'package:firebase_app/views/sign_in.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), route);
    super.initState();
  }

  route() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkTheme.backgroundColor,
      body: Container(
        child: Center(
          child: Text(
            'Nerd \n Quotes',
            style: rand(context),
          ),
        ),
      ),
    );
  }
}

TextStyle rand(BuildContext context) {
  List<TextStyle> style = [
    darkTheme.textTheme.headline1.copyWith(fontSize: 50),
    darkTheme.textTheme.headline2.copyWith(fontSize: 50),
    darkTheme.textTheme.headline3.copyWith(fontSize: 50),
    darkTheme.textTheme.headline4.copyWith(fontSize: 50),
    darkTheme.textTheme.headline5.copyWith(fontSize: 50),
    darkTheme.textTheme.headline6.copyWith(fontSize: 50),
  ];
  final zstyle = Random().nextInt(6);
  // return zstyle;
  if (zstyle == style.length) {
    print("Style");
    return style[zstyle];
  }
  return style[zstyle];
}
