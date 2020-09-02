import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
// Explict
  final formKey = GlobalKey<FormState>();
// Method
  Widget registerButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('You Click Upload');
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
    );
  }

  Widget nameText() {
    return TextFormField(
      style: TextStyle(color: Colors.purple),
      decoration: InputDecoration(
        icon: Icon(
          Icons.face,
          color: Colors.purple,
          size: 50,
        ),
        labelText: 'Display Name :',
        labelStyle: TextStyle(
          color: Colors.purple,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Type Your Nick Name for Display',
        helperStyle: TextStyle(
          color: Colors.purple,
          fontStyle: FontStyle.italic,
        ),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please fill Your Name in the Blank';
        } else {
          return null;
        }
      },
    );
  }

  Widget emailText() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(color: Colors.green.shade800),
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          color: Colors.green.shade800,
          size: 50,
        ),
        labelText: 'Email :',
        labelStyle: TextStyle(
          color: Colors.green.shade800,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Type Your Email',
        helperStyle: TextStyle(
          color: Colors.green.shade800,
          fontStyle: FontStyle.italic,
        ),
      ),
      validator: (String value) {
        if (!((value.contains('@')) && (value.contains('.')))) {
          return 'Please Type Email in Exp. you@email.com';
        } else {
          return null;
        }
        //if(!((value.contains('@'))&&(value.contains('.')))
      },
    );
  }

  Widget passwordText() {
    return TextFormField(
      style: TextStyle(color: Colors.blue.shade800),
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: Colors.blue.shade800,
          size: 50,
        ),
        labelText: 'Password :',
        labelStyle: TextStyle(
          color: Colors.blue.shade800,
          fontWeight: FontWeight.bold,
        ),
        helperText: 'Type Your password more 6 charactor',
        helperStyle: TextStyle(
          color: Colors.blue.shade800,
          fontStyle: FontStyle.italic,
        ),
      ),
      validator: (String value) {
        if (value.length < 6) {
          return 'Password More 6 Charactor';
        } else {
          return null;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow.shade600,
        title: Text('Register'),
        actions: [registerButton()],
      ),
      body: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.all(30),
          children: [
            nameText(),
            emailText(),
            passwordText(),
          ],
        ),
      ),
    );
  }
}
