import 'package:assessment_flutter/widget/categories.dart';
import 'package:assessment_flutter/widget/homeappbar.dart';
import 'package:assessment_flutter/widget/homenavbarbottom.dart';
import 'package:assessment_flutter/widget/items.dart';
import 'package:assessment_flutter/widget/categories.dart';
import 'package:assessment_flutter/widget/homenavbarbottom.dart';
import 'package:assessment_flutter/widget/items.dart';
import 'package:flutter/material.dart';
import 'package:assessment_flutter/widget/homeappbar.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Categories(),
          Container(
            height: 1500,
            width: 50,
            padding: EdgeInsets.only(top: 40),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2).withOpacity(0.4),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
           child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                child: Text(
                  "All Food",
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    )
                  ),
                ),
              ),
              ItemsWidget(),
            ],
          ),

          )
        ],
      ),
      bottomNavigationBar: Homenavbarbottom(),
    );
  }
}