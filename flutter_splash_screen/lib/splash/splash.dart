import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets\images\coffeeBackground.png'),
          ),
        ),
        child: Center(
          child: SvgPicture.asset('assets\images\coffeelogo.jpg'),
        ),
      ),
    );
  }
}
