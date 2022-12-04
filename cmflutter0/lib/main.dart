import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const CMApp());
}

class CMApp extends StatelessWidget {
  const CMApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CMApp',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.purple.withOpacity(0.2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Text('codeMobile.com'),
              color: Colors.red,
            ),
            Text('codeMobile.com'),
            Text('codeMobile.com'),
            Text('codeMobile.com'),
          ],
        ),
      ),
    );
  }
}
