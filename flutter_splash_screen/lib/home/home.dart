import 'package:flutter/material.dart';

import 'package:flutter_splash_screen/constant.dart';
import 'package:flutter_splash_screen/home/widget/loginRegister.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widget/SliderDot.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //the scaffold has the property like app bar, container etc.
    return Scaffold(
      //this is the app bar to seamlessly mix with the theme
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(20), // here the desired height
          child: AppBar(
           elevation: 0,
            backgroundColor: mLightBrown,
          ),
      ),

      //this is the original appbar
      /*
        appBar: AppBar(
          title: Text(
            "Home", 
            style: TextStyle(
            fontSize: 18, 
            color: Colors.white70
            ),
          ), 
          elevation: 10, 
          backgroundColor: Colors.blue,
        ),

      */
      //
      //creating a column to place the dot_slider,
      //below that the text and then below that the
      //register and login button
      //
      body: Column(
        children: <Widget>[
          //
          //placing the coffeeStand picture and calling
          //SliderDot Widget below
          //
          Image.asset(
              'assets/images/coffeeStand.png',
              //height: 320,
              //width: 400,
              //fit: BoxFit.fitWidth,
          ),
          SliderDot(),
          //
          //this container is placed to create lines above
          //the text to hide the uneveness of the contains
          //and also provides a good visual
          //
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: mDarkBrown, width: 2.0),
              color: Colors.white,
            ),
            //the container is continued to include
            //the text widget as well
            //
            //the padding creates the text box height and width
            //
            padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 35),
            //
            //double.infinity????????
            //
            width: double.infinity,
            child: Text(
              'Get the best coffee\nin town!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: mPrimaryTextColor,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          //
          //separated the Login and Register buttons as an independent widget
          //
          LoginAndRegister(),
        ],
      ),
    );
  }
}
