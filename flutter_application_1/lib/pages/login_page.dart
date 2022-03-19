import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/undraw_secure_login_pdn4.png",
          fit: BoxFit.cover,
        ),
        SizedBox(height: 40),
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter username",
            labelText: "Username",
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter password",
            labelText: "Password",
          ),
        )
      ],
    ));
  }
}
