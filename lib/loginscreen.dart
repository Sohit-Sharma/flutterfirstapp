import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  LoginScreen createState() => new LoginScreen();
}

class LoginScreen extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Container(height: double.infinity,width: double.infinity,decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF73AEF5),
              Color(0xFF73AEF5),
              Color(0xFF73AEF5),
              Color(0xFF73AEF5),
            ],
            stops: [0.1,0.4,0.7,0.9]
          )
        ),
        ),
        Container(
          height: double.infinity,
          child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 120.0
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'OpenSans',
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold
                  ),
                )
              ],
            ),
          ),
        )
      ],
      ),
    );
  }

}


