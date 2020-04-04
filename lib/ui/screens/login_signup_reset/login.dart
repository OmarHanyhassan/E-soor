import 'package:E_Soor/main.dart';
import 'package:E_Soor/models/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Duration get loginTime => Duration(milliseconds: 1800);
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      logo: 'assets/images/logo.png',
      onLogin: _auth.loginUser,
      onSignup: _auth.registerUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ));
      },
      onRecoverPassword: _auth.recoverPassword,
      messages: LoginMessages(
        usernameHint: 'Email',
        passwordHint: 'Password',
        confirmPasswordError: 'Not match!',
        recoverPasswordDescription: 'Write your email to find your account',
        recoverPasswordSuccess: 'Password rescued successfully',
      ),
      theme: LoginTheme(
        primaryColor: Color.fromRGBO(35, 35, 35, 100),
        accentColor: Colors.white,
        buttonTheme: LoginButtonTheme(
          splashColor: Colors.green,
          backgroundColor: Colors.grey,
        ),
        textFieldStyle: TextStyle(
          color: Colors.white,
        ),
        inputTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.black87,
          contentPadding: EdgeInsets.zero,
          errorStyle: TextStyle(
            backgroundColor: Colors.red.withOpacity(.7),
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(100),
          ),
          labelStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
