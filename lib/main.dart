// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gitam/splashScreen.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'Authentication/welcome.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    home: Splash(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget page = Welcome();
  final storage = FlutterSecureStorage();

  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    String token = await storage.read(key: "token");
    if (token != null) {
      setState(() {
        page = Welcome();
      });
    } else {
      setState(() {
        page = Welcome();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return page;
  }
}
