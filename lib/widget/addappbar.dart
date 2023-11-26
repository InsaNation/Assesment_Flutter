import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddAppbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 7,
                    blurRadius: 5,
                  ),
                ]
              ),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.red,
                size: 20,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 7,
                  blurRadius: 5,
                ),
              ]
            ),
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.person_2_outlined,
              size: 30,
              color: Colors.black,
            )
          ),
        ],
      ),
    );
  }
}