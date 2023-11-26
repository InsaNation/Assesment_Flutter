import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:assessment_flutter/page/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Image.asset(
            "image/logo.jpg",
          ),
        ],
      ),
      splashIconSize: 250,
      nextScreen: HomePage(), // Replace with your desired next screen widget
      duration: 3000, // Adjust the duration as needed (in milliseconds)
    );
  }
}
