import 'package:E_Soor/main.dart';
import 'package:E_Soor/ui/screens/login_signup_reset/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Firestore _firestore = Firestore.instance;
  String _email, _password;
  bool _isLoggedIn;

  Future<String> registerUser(data) async {
    print(data);
    _password = data.password;
    _email = data.name;
    try {
      await _auth.createUserWithEmailAndPassword(
          email: _email, password: _password);
      await _firestore.collection('users').add({
        'user': _email,
        'pass': _password,
      });
    } catch (e) {
      print(e);
      return null;
    }
    _isLoggedIn = true;
    return null;
  }

  Future<String> loginUser(data) async {
    print(data);
    _password = data.password;
    _email = data.name;
    try {
      await _auth.signInWithEmailAndPassword(
          email: _email, password: _password);
    } catch (err) {
      print(err);
      return null;
    }
    _isLoggedIn = true;
    return null;
  }

  Future<String> recoverPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } catch (err) {
      print(err);
      return null;
    }
    _isLoggedIn = false;
    return null;
  }

  Future<void> logOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print(e);
      return null;
    }
    _isLoggedIn = false;
    return null;
  }

  Widget isLoggedIn() {
    if (_isLoggedIn == true) {
      return MyHomePage();
    } else {
      return LoginPage();
    }
  }
}
