import 'package:flutter/material.dart';
import '../bottomNavigation.dart';

class AnonymousChat extends StatefulWidget {
  @override
  _AnonymousChatState createState() => _AnonymousChatState();
}

class _AnonymousChatState extends State<AnonymousChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Scaffold(
          body: Container(
            color: Colors.white,
            child: Center(
              child: Text(
                "Anonymous Chat",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigation(),
        )));
  }
}
