import 'package:flutter/material.dart';

import 'package:flutter_splash_screen/constant.dart';
import 'SliderDot.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //the scaffold has the property like app bar, container etc.
    return Scaffold(
      //this is the app bar to seamlessly mix with the theme
       appBar: AppBar(
         elevation: 0,
         backgroundColor: mLightBrown,
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
          Image.asset('assets/images/coffeeStand.png'),          
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
            padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 15), 
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

//
//extracted a widget on container
//
class LoginAndRegister extends StatelessWidget {
  const LoginAndRegister({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 35),
      child: Row(
        children: <Widget>[
          Expanded(
            //
            //FlatButton is depracated in Flutter 2.0+ and exchanged with TextButton.
            child: FlatButton(
              //
              //shape of the 'Register' button is designed
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              color: mDarkBrown, //color of the button
              //
              //onPressed takes a empty function ?????
              onPressed: () {},
              //
              //again the container is added to write the 'Register' text
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          
          //
          //the 'Login' button is designed in a similar fashion
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: mDarkBrown),
              ),
              color: mDarkBrown,
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16),
                alignment: Alignment.center,
                width: double.infinity,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
