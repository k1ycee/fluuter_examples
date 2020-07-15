import 'package:firebase_app/theme/app_theme.dart';
import 'package:firebase_app/views/quotes_view.dart';
import 'package:firebase_app/views/widgets/button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quotes()
    );
  }
}

