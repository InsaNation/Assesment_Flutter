import 'package:assessment_flutter/widget/addappbar.dart';
import 'package:assessment_flutter/widget/addappbar.dart';
import 'package:assessment_flutter/widget/additems.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AddAppbar(),
          Column(
            children: [
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25, bottom: 15),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/data');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 70, 65, 217),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Add Data',
                            style: GoogleFonts.inter(
                              textStyle: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  AddItems(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}