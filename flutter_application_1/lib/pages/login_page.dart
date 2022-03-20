import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            "assets/images/undraw_secure_login_pdn4.png",
            height: 200,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text("Login"),
                  style: TextButton.styleFrom(
                      minimumSize: Size(100, 40),
                      backgroundColor: Color.fromARGB(255, 103, 94, 238)),
                  onPressed: () {
                    Navigator.pushNamed(context, myroutes.homepage);
                  },
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
