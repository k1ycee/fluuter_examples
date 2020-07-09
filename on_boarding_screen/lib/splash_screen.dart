import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  // opening the onboarding box again
  void open()async{
    await Hive.openBox('onboarding');
  }
  // stating the box am referring to which is on-boarding
  var box = Hive.box('onboarding');

  // Init state function/method
  @override
  void initState() {
    Timer(Duration(seconds: 3), box.get('status') == 'true' ? elseroute : route);
    super.initState();
  }

  // Function to Navigate to the on-boarding screen 
  route() {
    Navigator.pushReplacementNamed(context, 'onboarding');
  }
  
  // Function to Navigate to the main screen
  elseroute() {
    Navigator.pushReplacementNamed(context, 'main');
  }

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
