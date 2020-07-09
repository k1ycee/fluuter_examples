import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:on_boarding_screen/on_boarding_screen.dart';
import 'package:on_boarding_screen/screen.dart';
import 'package:on_boarding_screen/splash_screen.dart';
import 'package:path_provider/path_provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // get path of the app
  var path = await getApplicationDocumentsDirectory();
  // initialize hive with the app directory
  Hive.init(path.path);
  // open a box "onboarding"
  await Hive.openBox('onboarding');
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
        'onboarding': (context) => OnBoarding(),
        'main': (context) => MainScreen()
      },
    );
  }
}

