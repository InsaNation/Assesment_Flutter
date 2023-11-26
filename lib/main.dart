import 'package:assessment_flutter/page/addpage.dart';
import 'package:assessment_flutter/page/cartpage.dart';
import 'package:assessment_flutter/page/datapage.dart';
import 'package:assessment_flutter/page/homepage.dart';
import 'package:assessment_flutter/splash.dart';
import 'package:flutter/material.dart';


void main() => runApp (MyApp());

  class MyApp extends StatelessWidget{
    @override

    Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: {
          '/home': (context) => HomePage(),
          '/cart': (context) => CartPage(),
          '/post': (context) => AddPage(),
          '/data': (context) => DataPage(),
        }
      );
    }
  }