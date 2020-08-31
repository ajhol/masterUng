import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showAppName() {
    return Text('สวัสดีครับ !!!!!ชาวโลก');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[showAppName(), showAppName(), showAppName()],
          ),
        ),
      ),
    );
  }
}
