import 'package:E_Soor/main.dart';
import 'package:E_Soor/models/auth.dart';
import 'package:E_Soor/ui/screens/login_signup_reset/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: MySplashScreen(),
      theme: ThemeData.dark(),
    ),
  );
}

class MySplashScreen extends StatefulWidget {
  @override
  _MySplashScreenState createState() => new _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      photoSize: 200,
      backgroundColor: Color.fromRGBO(35, 35, 35, 100),
      seconds: 5,
      navigateAfterSeconds: _auth.isLoggedIn() ? MyHomePage() : LoginPage(),
      image: Image.asset("assets/images/logo.png"),
      loaderColor: Colors.white,
      loadingText: Text(
        "Loading",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
