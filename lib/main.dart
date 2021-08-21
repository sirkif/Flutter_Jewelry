import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_jewelry/screens/home_screen.dart';

import 'screens/onboarding.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter name',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => OnBoardingScreen(),
        'home': (_) => HomeScreen(),
      },
    );
  }
}
