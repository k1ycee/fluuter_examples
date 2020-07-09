import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // TODO: Put the initstate function/method 

 // TODO: Write the Function to navigate to the on-boarding screen


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Welcome',
            style: TextStyle(
                color: Colors.amber, fontSize: 35, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
