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
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      photoSize: 200,
      /*gradientBackground: LinearGradient(
				begin: Alignment.topLeft,
				end: Alignment.bottomRight,
				colors: <Color>[
					Colors.black12,
					Colors.blue,
					Colors.blueGrey
				],
				stops: [
					0.3,
					0.6,
					1,
				],
			),*/
      backgroundColor: Color.fromRGBO(35, 35, 35, 100),
      seconds: 5,
      navigateAfterSeconds: LoginPage(),
      image: Image.asset("images/logo.png"),
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
