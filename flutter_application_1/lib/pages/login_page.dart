import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
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
            "Welcome $name",
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
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () async {
                    //Navigator.pushNamed(context, myroutes.homepage);
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, myroutes.homepage);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    alignment: Alignment.center,
                    width: changeButton ? 50 : 100,
                    height: 40,
                    child: changeButton
                        ? Icon(Icons.done, color: Colors.white)
                        : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 96, 99, 236),
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8)),
                  ),
                )
                // ElevatedButton(
                //   child: Text("Login"),
                //   style: TextButton.styleFrom(
                //       minimumSize: Size(100, 40),
                //       backgroundColor: Color.fromARGB(255, 103, 94, 238)),
                //   onPressed: () {
                //     Navigator.pushNamed(context, myroutes.homepage);
                //   },
                // )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
