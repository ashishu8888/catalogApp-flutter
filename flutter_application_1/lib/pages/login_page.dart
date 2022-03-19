import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text(
          "Login",
          style: TextStyle(
              fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold),
          textScaleFactor: 2.0,
        ),
      ),
    );
  }
}
