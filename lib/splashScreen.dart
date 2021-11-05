import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'package:gitam/main.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      home: MyApp(),
      duration: 3000,
      imageSize: 90,
      imageSrc: "assets/logo.png",
//      text: "Gitam",
      textType: TextType.TyperAnimatedText,
      textStyle: TextStyle(
          fontWeight: FontWeight.w500, fontSize: 24, fontFamily: 'Roboto'),
      backgroundColor: Colors.white,
    );
  }
}
