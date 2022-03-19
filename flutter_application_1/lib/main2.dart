import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int days = 30;

  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      color: Colors.white,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/Login",
      routes: {
        "/": (context) => HomePage(),
        "/Login": (context) => LoginPage(),
      },
    );
  }
}
