import 'package:E_Soor/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Duration get loginTime => Duration(milliseconds: 1800);

  final Firestore _firestore = Firestore.instance;

  String _email , _password;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<String> _registerUser(data) async {
    print(data);
    _password = data.password;
    _email = data.name;
    await _auth.createUserWithEmailAndPassword(
        email: _email, password: _password);
    await _firestore.collection('users').add({
      'user': _email,
    });
    return null;
  }

  Future<String> _loginUser(data) async {
    print(data);
    _password = data.password;
    _email = data.name;
    await _auth.signInWithEmailAndPassword(email: _email ,password: _password);
    return null;
  }

  Future<String> _recoverPassword(String name) {
    return null;
  }
  /* 

  Future<String> _authUserLogin(LoginData data) {
    getUserPrefs();
    print('Email: ${data.email}, Password: ${data.password}');
    //users.then(print(users));
    Future.delayed(loginTime).then((_) async {
      if (!(users).contains(data.email)) {
        return 'Username not exists';
      } else {
        isloggedIn = true;
      }
      return null;
    });
  }

  Future<String> _authUserSignup(LoginData data) {
    print('Email: ${data.email}, Password: ${data.password}');
    saveUserPrefs(data.email, data.password);
    Future.delayed(loginTime).then((_) async {
      post(api.User(name: data.email, password: data.password));
      print(users);
      return null;
    });
  }

  Future saveUserPrefs(String name, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('user', [name, password]);
  }

  Future<List<String>> getUserPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> userPrefs = prefs.getStringList('user');
    return userPrefs;
  }

  Future<String> getNamePrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String name = prefs.getString('name');
    return name;
  }

  
  }*/

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      logo: 'images/logo.png',
      onLogin: _loginUser,
      onSignup: _registerUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ));
      },
      onRecoverPassword: _recoverPassword,
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
