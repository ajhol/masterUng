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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[showLogo(), showAppName()],
          ),
        ),
      ),
    );
  }
}
