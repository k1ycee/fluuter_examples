import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:on_boarding_screen/dot_indicator.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  // This is where the box is being made 
  var box = Hive.box('onboarding');
  PageController controller;
  int currentIndex = 0;

  @override
  void initState() {
    controller = PageController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent[200],
      body: Stack(
        children: [
          PageView(
            onPageChanged: onchanged,
            controller: controller,
            children: [
              Container(
                child: Image.asset('assets/fierceninja.png'),
              ),
              Container(
                child: Image.asset('assets/ninja.png'),
              ),
              Container(
                child: Image.asset('assets/ninjahead.jpg'),
              ),
            ],
          ),
          Positioned(
            bottom: 140,
            left: 140,
            child: Container(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Indicator(
                    positionIndex: 0,
                    currentIndex: currentIndex,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Indicator(
                    positionIndex: 1,
                    currentIndex: currentIndex,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Indicator(
                    positionIndex: 2,
                    currentIndex: currentIndex,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 265,
            child: currentIndex == 2
                ? FlatButton(
                    child: Text('Start >'),
                    onPressed: () {
                      box.put('status', 'true');
                      move();
                    },
                    color: Colors.transparent,
                  )
                : Container(
                    color: Colors.transparent,
                  ),
          ),
          Positioned(
              child: FlatButton(
                child: Text('Skip >>'),
                color: Colors.transparent,
                onPressed: () {
                  box.put('status', 'true');
                  move();
                },
              ),
              top: 40,
              right: 10),
        ],
      ),
    );
  }

  onchanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void move() {
    Navigator.pushReplacementNamed(context, 'main');
  }
}
