
import 'package:flutter/material.dart';

import '../../constant.dart';


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
              color: mBrown, //color of the button
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
          //this SizedBox is added between the buttons to create space
          //
          SizedBox(width: 30,),
          //
          //the 'Login' button is designed in a similar fashion
          Expanded(
            child: FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: mDarkBrown),
              ),
              color: mBrown,
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
