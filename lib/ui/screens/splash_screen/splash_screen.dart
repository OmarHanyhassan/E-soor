import 'package:E_Soor/models/auth.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

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
      navigateAfterSeconds: _auth.isLoggedIn(),
      image: Image.asset("allAssets/images/logo.png"),
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
