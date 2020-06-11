import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => FirstScreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => SecondScreen(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Launch screen'),
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: Login(),

        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  @override
  LoginScreen createState() => new LoginScreen();
}

class LoginScreen extends State<Login>{

  Widget buildTf(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
        ),
        SizedBox(height: 10.0),
        Container(
          decoration: myBoxDecoration(),
          alignment: Alignment.centerLeft,
          height: 60,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              hintText: 'Enter your email',
            ),
          ),
        )
      ],
    );

  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
          width: 1.0
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(5.0) //         <--- border radius here
      ),
    );
  }

  Widget buildTfPassword(){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
        ),
        SizedBox(height: 10.0),
        Container(
          decoration: myBoxDecoration(),
          alignment: Alignment.centerLeft,
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.white,
              ),
              hintText: 'Enter your password',
            ),
          ),
        )
      ],
    );

  }

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
                  Color(0xFF61A4F1),
                  Color(0xFF478DE0),
                  Color(0xFF398AE5),
                ],
                stops: [0.1,0.4,0.7,0.9]
            )
        ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(physics: AlwaysScrollableScrollPhysics(),
            padding: EdgeInsets.symmetric(
                horizontal: 20.0,
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
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                  ),
                ),
               SizedBox(height: 30.0),
                buildTf(),
                SizedBox(height: 30.0),
                    buildTfPassword(),
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: ()=>print('forgot passowrd'),
                    padding: EdgeInsets.only(right: 0.0),
                    child: Text('Forgot Password'),
                  ),
                ),
                Container(padding: EdgeInsets.symmetric(vertical: 25),
                  child: RaisedButton(
                    elevation: 5,
                    onPressed: ()=> print('Login Button Pressed'),
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.white,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Color(0xFF527DAA),
                        letterSpacing: 1.5,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
            ],
            ),
          ),
        )
      ],
      ),
    );
  }

}
