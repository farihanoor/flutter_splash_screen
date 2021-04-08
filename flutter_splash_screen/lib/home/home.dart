import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/constant.dart';

import 'SliderDot.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: <Widget>[
          Image.asset('assets/images/coffeeStand.png'),
          SliderDot(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Get the best coffee\nin town!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mPrimaryTextColor,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 60,),
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
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(36),
              ),
              color: mPrimaryColor,                  
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
          SizedBox(width: 30, ),
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(36),
               side: BorderSide(color: mPrimaryColor),
              ),
              color: mPrimaryColor,                  
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
