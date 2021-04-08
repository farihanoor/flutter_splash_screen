import 'package:flutter/material.dart';

import 'package:flutter_splash_screen/constant.dart';
import 'SliderDot.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         elevation: 0,
         
         backgroundColor: mLightBrown,
      ),
      //extendBodyBehindAppBar: false,
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/coffeeStand.png'),          
          SliderDot(),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: mDarkBrown),
            color: Colors.white,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 15),   
            width: double.infinity,
           // margin: EdgeInsets.all(5),
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
         
          LoginAndRegister(),
        ],
      ),
    );
  }
}

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
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ),
              color: mDarkBrown,
              onPressed: () {},
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
          
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
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
