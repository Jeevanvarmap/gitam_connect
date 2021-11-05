import 'package:flutter/material.dart';
import 'package:gitam/Authentication/login.dart';
import 'package:gitam/Authentication/signup.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.white,
                body: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 75.0, horizontal: 80.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Text(
                          "WELCOME TO GITAM CONNECT",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          textAlign: TextAlign.center,
                        )),
                        SizedBox(
                          height: 15,
                        ),
                        Image.asset('assets/logo_round.jpg'),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: double.infinity, // <-- match_parent
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.black,
                            child: Text("LOGIN"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                          width: double.infinity, // <-- match_parent
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.black,
                            child: Text("SIGNUP"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );
                            },
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      ],
                    )))));
  }
}
