import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 7,
                  blurRadius: 5,
                )
              ]
            ),
            padding: EdgeInsets.all(1),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ),
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 7,
                  blurRadius: 5,
                )
              ]
            ),
            padding: EdgeInsets.all(1),
            child: IconButton(
              icon: Icon(
                Icons.person_2_outlined,
                size: 30,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
