import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //Method
  Widget showLogo() {
    return Container(
      width: 150.0,
      height: 150.0,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget showAppName() {
    return Text(
      'Hello Loh Shop',
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue.shade700,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'Mansalva',
      ),
    );
  } //esyyyr

  Widget signInButton() {
    return RaisedButton(
      color: Colors.blue.shade700,
      onPressed: () {},
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget signUpButton() {
    return OutlineButton(
      onPressed: () {},
      child: Text('Sign Up'),
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        signInButton(),
        SizedBox(
          width: 8,
        ),
        signUpButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            showLogo(),
            showAppName(),
            SizedBox(
              height: 18,
            ),
            showButton(),
          ]),
        ),
      ),
    );
  }
}
