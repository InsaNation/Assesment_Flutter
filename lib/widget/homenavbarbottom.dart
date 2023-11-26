import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class Homenavbarbottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 50,
            blurRadius: 25,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              // Navigate to the home page
              // You can replace 'HomeScreen' with the actual name of your home screen class
              Navigator.pushReplacementNamed(context, '/home');
            },
            child: Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
            badges.Badge(
            position: BadgePosition.topEnd(top: -8, end: -8),
            badgeContent: Text(
              '3', // Replace with the actual number of items in the cart
              style: TextStyle(color: Colors.white),
            ),
            child: GestureDetector(
              onTap: () {
                // Navigate to the cart page
                // You can replace 'CartScreen' with the actual name of your cart screen class
                Navigator.pushReplacementNamed(context, '/cart');
              },
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigate to the add post page
              // You can replace 'AddPostScreen' with the actual name of your add post screen class
              Navigator.pushReplacementNamed(context, '/post');
            },
            child: Icon(
              Icons.post_add_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
